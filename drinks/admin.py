from django.contrib import admin
from .models import DrinkItem, DrinkCategory

@admin.register(DrinkItem)
class DrinkItemModelAdmin(admin.ModelAdmin):

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


@admin.register(DrinkCategory)
class DrinkCategoryModelAdmin(admin.ModelAdmin):

    list_display = (
        'title',
        'parent',
        'title_eng'
    )

    list_filter = (
        'parent',
    )