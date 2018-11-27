from django.urls import path
from .views import render_menu, render_menu_eng


urlpatterns = [
    path('', render_menu, name='menu'),
    path('eng/', render_menu_eng, name='menu-eng')
]
