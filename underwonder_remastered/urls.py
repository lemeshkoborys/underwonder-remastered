from django.contrib import admin
from django.urls import path, include
from django.views.generic.base import RedirectView
from django.conf import settings
from django.conf.urls.static import static
from underwonder_remastered.index.views import view_404

handler404 = view_404
handler500 = view_404
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('underwonder_remastered.index.urls'), name='index'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) + \
    static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
