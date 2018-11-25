from django.contrib import admin
from .models import BreakfastItem

@admin.register(BreakfastItem)
class BreakfastItemModelAdmin(admin.ModelAdmin):

    list_display = (
        'title',
        'price',
        'weight',
        'get_subitems',
        'title_eng'
    )

