from django.contrib import admin
from .models import WineCategory, WineItem


@admin.register(WineCategory)
class WineCategoryModelAdmin(admin.ModelAdmin):

    list_display = (
        'title',
        'parent',
        'title_eng'
    )

    list_filter = (
        'parent',
    )


@admin.register(WineItem)
class WineItemModelAdmin(admin.ModelAdmin):

    list_display = (
        'title',
        'category',
        'price',
        'weight',
        'title_eng'
    )

    list_filter = (
        'category',
    )