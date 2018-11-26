from django.contrib import admin
from .models import BreakfastItem

@admin.register(BreakfastItem)
class BreakfastItemModelAdmin(admin.ModelAdmin):

    list_display = (
        'title',
        'price',
        'weight',
        'subitems_admin_layout',
        'title_eng'
    )

