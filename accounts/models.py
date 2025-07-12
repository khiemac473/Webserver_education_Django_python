from django.db import models

class NguoiDung(models.Model):
    VAI_TRO_CHOICES = [('hoc_vien', 'Học viên'), ('giao_vien', 'Giáo viên'), ('quan_tri', 'Quản trị')]

    id = models.AutoField(primary_key=True)
    ho_ten = models.CharField(max_length=100, null=True)
    email = models.CharField(max_length=255, unique=True, null=True)
    mat_khau = models.CharField(max_length=255, null=True)
    vai_tro = models.CharField(max_length=20, choices=VAI_TRO_CHOICES, null=True)
    ngay_tao = models.DateField(null=True)

    class Meta: db_table = 'nguoi_dung'
    def __str__(self): return self.ho_ten or self.email
