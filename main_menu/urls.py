from django.urls import path
from .views import render_menu, render_menu_eng
from django.views.generic.base import RedirectView


urlpatterns = [
    path('', render_menu, name='menu'),
    path('eng/', render_menu_eng, name='menu-eng'),
    path('data/menu', RedirectView.as_view(url='/menu/'), name='redirect-to-menu'),
    path('data/menu.pdf', RedirectView.as_view(url='/menu/'), name='redirect-to-menu-frompdf')
]
