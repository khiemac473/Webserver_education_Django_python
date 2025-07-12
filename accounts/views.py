from django.shortcuts import render, redirect
from django.contrib import messages
from .models import NguoiDung

def login_view(request):
    if request.method == 'POST':
        email, password = request.POST.get('email'), request.POST.get('password')
        try:
            user = NguoiDung.objects.get(email=email)
            if user.vai_tro == 'hoc_vien' and user.mat_khau == password:
                request.session['user_id'] = user.id
                return redirect('courses:home')
            messages.error(request, 'Email hoặc mật khẩu không đúng, hoặc không có quyền.')
        except NguoiDung.DoesNotExist:
            messages.error(request, 'Email không tồn tại.')
    return render(request, 'login.html')

def logout_view(request):
    request.session.flush()
    return redirect('accounts:login')
