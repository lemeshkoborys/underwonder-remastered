from django.urls import path
from .views import render_index, render_index_eng

urlpatterns = [
    path('', render_index, name='index'),
    path('eng/', render_index_eng, name='index-eng'),
]
