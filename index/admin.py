from django.contrib import admin
from .models import Section


@admin.register(Section)
class SectionModelAdmin(admin.ModelAdmin):

    list_display = (
        'title',
        'content',
        'content_eng'
    )

    # def has_add_permission(self, request, obj=None):
    #     return False
    
    def has_delete_permission(self, request, obj=None):
        return False
