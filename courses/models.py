from django.db import models
from accounts.models import NguoiDung

class KhoaHoc(models.Model):
    id = models.AutoField(primary_key=True)
    ten_khoa_hoc = models.CharField(max_length=255, null=True)
    mo_ta = models.TextField(null=True)
    nguoi_dung_id = models.ForeignKey(NguoiDung, on_delete=models.CASCADE, null=True, db_column='nguoi_dung_id')
    ngay_tao = models.DateField(null=True)
    class Meta: db_table = 'khoa_hoc'
    def __str__(self): return self.ten_khoa_hoc

class ChuongHoc(models.Model):
    id = models.AutoField(primary_key=True)
    khoa_hoc_id = models.ForeignKey(KhoaHoc, on_delete=models.CASCADE, null=True, db_column='khoa_hoc_id')
    ten_chuong = models.CharField(max_length=255, null=True)
    ngay_tao = models.DateField(null=True)
    class Meta: db_table = 'chuong_hoc'
    def __str__(self): return self.ten_chuong

# Các mô hình khác tương tự: BaiHoc, NdTrang, BaiThi, Nhch, CauBai, KetQua, HtQuyen, PhanQuyen
class BaiHoc(models.Model):
    id = models.AutoField(primary_key=True)
    chuong_hoc_id = models.ForeignKey(ChuongHoc, on_delete=models.CASCADE, null=True, db_column='chuong_hoc_id')
    noi_dung = models.TextField(null=True)
    ngay_tao = models.DateField(null=True)
    class Meta: db_table = 'bai_hoc'
    def __str__(self): return self.get_title()
    def get_title(self):
        if self.noi_dung: return self.noi_dung[:50]
        first_page = self.ndtrang_set.order_by('so_trang').first()
        return first_page.tieu_de if first_page and first_page.tieu_de else f"Bài học {self.id}"

class NdTrang(models.Model):
    id = models.AutoField(primary_key=True)
    bai_hoc_id = models.ForeignKey(BaiHoc, on_delete=models.CASCADE, db_column='bai_hoc_id')
    so_trang = models.IntegerField()
    tieu_de = models.CharField(max_length=255, null=True)
    noi_dung = models.TextField(null=True)
    duong_dan = models.TextField(null=True)
    ngay_tao = models.DateField(null=True)
    class Meta: db_table = 'nd_trang'
    def __str__(self): return self.tieu_de or f"Trang {self.so_trang}"

class BaiThi(models.Model):
    id = models.AutoField(primary_key=True)
    ten_bai_thi = models.CharField(max_length=255)
    so_cau = models.CharField(max_length=100)
    loai = models.CharField(max_length=20, choices=[('chapter_test', 'Chapter Test'), ('final_test', 'Final Test')], default='chapter_test')
    khoa_hoc_id = models.ForeignKey(KhoaHoc, on_delete=models.CASCADE, null=True, db_column='khoa_hoc_id')
    chuong_hoc_id = models.ForeignKey(ChuongHoc, on_delete=models.CASCADE, null=True, db_column='chuong_hoc_id')
    ngay_tao = models.DateField(null=True)
    class Meta: db_table = 'bai_thi'
    def __str__(self): return self.ten_bai_thi

class Nhch(models.Model):
    id = models.AutoField(primary_key=True)
    chuong_hoc_id = models.ForeignKey(ChuongHoc, on_delete=models.CASCADE, db_column='chuong_hoc_id')
    cau_hoi = models.TextField()
    dap_an_a = models.CharField(max_length=255)
    dap_an_b = models.CharField(max_length=255)
    dap_an_c = models.CharField(max_length=255, null=True)
    dap_an_d = models.CharField(max_length=255, null=True)
    dap_an_dung = models.CharField(max_length=1, choices=[('A', 'A'), ('B', 'B'), ('C', 'C'), ('D', 'D')])
    hinh_anh = models.TextField(null=True)
    class Meta: db_table = 'nhch'
    def __str__(self): return self.cau_hoi[:50]

class CauBai(models.Model):
    id = models.AutoField(primary_key=True)
    bai_thi_id = models.ForeignKey(BaiThi, on_delete=models.CASCADE, db_column='bai_thi_id')
    nhch_id = models.ForeignKey(Nhch, on_delete=models.CASCADE, db_column='nhch_id')
    class Meta: db_table = 'cau_bai'

class KetQua(models.Model):
    id = models.AutoField(primary_key=True)
    nguoi_dung_id = models.ForeignKey(NguoiDung, on_delete=models.CASCADE, db_column='nguoi_dung_id')
    bai_thi_id = models.ForeignKey(BaiThi, on_delete=models.CASCADE, db_column='bai_thi_id')
    lan_thi = models.IntegerField(default=1)
    diem = models.FloatField()
    ngay_thi = models.DateTimeField(auto_now_add=True)
    class Meta: db_table = 'ket_qua'

class HtQuyen(models.Model):
    id = models.AutoField(primary_key=True)
    ten_quyen = models.CharField(max_length=50)
    class Meta: db_table = 'ht_quyen'
    def __str__(self): return self.ten_quyen

class PhanQuyen(models.Model):
    id = models.AutoField(primary_key=True)
    nguoi_dung_id = models.ForeignKey(NguoiDung, on_delete=models.CASCADE, db_column='nguoi_dung_id')
    khoa_hoc_id = models.ForeignKey(KhoaHoc, on_delete=models.CASCADE, db_column='khoa_hoc_id')
    ngay_cap = models.DateField()
    quyen_id = models.ForeignKey(HtQuyen, on_delete=models.CASCADE, db_column='quyen_id')
    class Meta: db_table = 'phan_quyen'
