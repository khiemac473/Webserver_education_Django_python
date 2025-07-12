from django.urls import path
from . import views

app_name = 'courses'

urlpatterns = [
    path('', views.home, name='home'),
    path('course/<int:course_id>/', views.course_detail, name='course_detail'),
    path('chapter/<int:chapter_id>/', views.chapter_detail, name='chapter_detail'),
    path('lesson/<int:lesson_id>/', views.lesson_detail, name='lesson_detail'),
    path('page/<int:page_id>/', views.page_content, name='page_content'),
    path('test/<int:test_id>/', views.take_test, name='take_test'),
    path('test/<int:test_id>/result/', views.test_result, name='test_result'),
    path('test/<int:test_id>/retake/', views.retake_test, name='retake_test'),
]
