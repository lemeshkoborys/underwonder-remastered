from django.contrib import admin
from .models import MenuItem, MenuCategory


@admin.register(MenuItem)
class MenuItemModelAdmin(admin.ModelAdmin):

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


@admin.register(MenuCategory)
class MenuCategoryModelAdmin(admin.ModelAdmin):

    list_display = (
        'title',
        'parent',
        'title_eng',
        'link_to_items'
    )

    list_filter = (
        'parent',
    )