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
import index.urls
from index.views import view_404
from django.views.generic.base import RedirectView

handler404 = view_404
handler500 = view_404
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('index.urls'), name='index'),
    path('menu/', include('main_menu.urls')),
    path('data/menu', RedirectView.as_view(url='/menu/'), name='redirect-to-menu'),
    path('data/menu.pdf', RedirectView.as_view(url='/menu/'), name='redirect-to-menu-frompdf')
]
