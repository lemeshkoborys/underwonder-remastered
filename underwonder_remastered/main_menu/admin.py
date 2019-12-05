from django.contrib import admin
from .models import MenuFile


@admin.register(MenuFile)
class MenuFileModelAdmin(admin.ModelAdmin):
    list_display = ('file', 'link', )
    list_display_links = ('link', )

    def has_add_permission(self, request):
        return False

    def has_delete_permission(self, request, obj=None):
        return False
