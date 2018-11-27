"""underwonder_remastered URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
import main_menu.urls
from django.shortcuts import render

def index_render(request):
    return render(request, 'index.html')

def eng_index_render(request):
    return render(request, 'eng-index.html')

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index_render, name='index'),
    path('eng/', eng_index_render, name='index-eng'),
    path('menu/', include('main_menu.urls'))
]
