from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from .models import KhoaHoc, ChuongHoc, BaiHoc, NdTrang, BaiThi, Nhch, CauBai, KetQua, PhanQuyen, HtQuyen
from accounts.models import NguoiDung
from django.db import transaction
import random
# Khai báo các thư viện như: django, accounts.models, django.db, random...
def home(request):
    user_id = request.session.get('user_id')
    if not user_id:
        return redirect('accounts:login')
    user = get_object_or_404(NguoiDung, id=user_id)
    if user.vai_tro != 'hoc_vien':
        messages.error(request, 'Chỉ học viên được truy cập trang này.')
        return redirect('accounts:login')
    courses = KhoaHoc.objects.all()
    permissions = PhanQuyen.objects.filter(nguoi_dung_id=user.id, quyen_id=1).select_related('khoa_hoc_id', 'quyen_id')
    return render(request, 'home.html', {'user': user, 'courses': courses, 'permissions': permissions})

def course_detail(request, course_id):
    user_id = request.session.get('user_id')
    if not user_id:
        return redirect('accounts:login')
    course = get_object_or_404(KhoaHoc, id=course_id)
    chapters = ChuongHoc.objects.filter(khoa_hoc_id=course)
    final_test = BaiThi.objects.filter(khoa_hoc_id=course, loai='final_test').first()
    results = KetQua.objects.filter(nguoi_dung_id=user_id, bai_thi_id=final_test.id) if final_test else []
    return render(request, 'course_detail.html', {'course': course, 'chapters': chapters, 'final_test': final_test, 'results': results})
# Các view: chapter_detail, lesson_detail, page_content, take_test, test_result, retake_test, generate_test_questions
def chapter_detail(request, chapter_id):
    user_id = request.session.get('user_id')
    if not user_id:
        return redirect('accounts:login')
    chapter = get_object_or_404(ChuongHoc, id=chapter_id)
    lessons = BaiHoc.objects.filter(chuong_hoc_id=chapter)
    test = BaiThi.objects.filter(chuong_hoc_id=chapter, loai='chapter_test').first()
    results = KetQua.objects.filter(nguoi_dung_id=user_id, bai_thi_id=test.id) if test else []
    return render(request, 'chapter_detail.html', {'chapter': chapter, 'lessons': lessons, 'test': test, 'results': results})

def lesson_detail(request, lesson_id):
    user_id = request.session.get('user_id')
    if not user_id:
        return redirect('accounts:login')
    lesson = get_object_or_404(BaiHoc, id=lesson_id)
    pages = NdTrang.objects.filter(bai_hoc_id=lesson).order_by('so_trang')
    return render(request, 'lesson_detail.html', {'lesson': lesson, 'pages': pages})

def page_content(request, page_id):
    user_id = request.session.get('user_id')
    if not user_id:
        return redirect('accounts:login')
    page = get_object_or_404(NdTrang, id=page_id)
    return render(request, 'page_content.html', {'page': page})

def take_test(request, test_id):
    user_id = request.session.get('user_id')
    if not user_id:
        return redirect('accounts:login')
    test = get_object_or_404(BaiThi, id=test_id)
    questions = CauBai.objects.filter(bai_thi_id=test).select_related('nhch_id') or generate_test_questions(test)
    if request.method == 'POST':
        score = sum(1 for q in questions if request.POST.get(f'question_{q.id}') == q.nhch_id.dap_an_dung)
        total = len(questions)
        score = (score / total) * 100 if total else 0
        with transaction.atomic():
            last = KetQua.objects.filter(nguoi_dung_id=user_id, bai_thi_id=test).order_by('-lan_thi').first()
            KetQua.objects.create(nguoi_dung_id_id=user_id, bai_thi_id=test, lan_thi=(last.lan_thi + 1 if last else 1), diem=score)
        return redirect('courses:test_result', test_id=test.id)
    return render(request, 'test.html', {'test': test, 'questions': questions})

def test_result(request, test_id):
    user_id = request.session.get('user_id')
    if not user_id:
        return redirect('accounts:login')
    test = get_object_or_404(BaiThi, id=test_id)
    result = KetQua.objects.filter(nguoi_dung_id=user_id, bai_thi_id=test).order_by('-lan_thi').first()
    return render(request, 'test_result.html', {'test': test, 'result': result})

def retake_test(request, test_id):
    user_id = request.session.get('user_id')
    if not user_id:
        return redirect('accounts:login')
    test = get_object_or_404(BaiThi, id=test_id)
    with transaction.atomic():
        CauBai.objects.filter(bai_thi_id=test).delete()
        generate_test_questions(test)
    return redirect('courses:take_test', test_id=test.id)

def generate_test_questions(test):
    selected_questions = []
    if test.loai == 'chapter_test':
        pool = list(Nhch.objects.filter(chuong_hoc_id=test.chuong_hoc_id))
        selected_questions = random.sample(pool, min(int(test.so_cau), len(pool)))
    else:  # final_test
        chapters = ChuongHoc.objects.filter(khoa_hoc_id=test.khoa_hoc_id)
        counts = [int(x) for x in test.so_cau.split('-')]
        for chap, count in zip(chapters, counts):
            pool = list(Nhch.objects.filter(chuong_hoc_id=chap))
            selected_questions += random.sample(pool, min(count, len(pool)))
    with transaction.atomic():
        for q in selected_questions:
            CauBai.objects.create(bai_thi_id=test, nhch_id=q)
    return CauBai.objects.filter(bai_thi_id=test).select_related('nhch_id')
