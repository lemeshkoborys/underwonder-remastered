from django.contrib import admin
from .models import MenuItem, MenuCategory
from django.urls import reverse
from django.utils.html import mark_safe
from .forms import MenuCategoryForm


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

    form = MenuCategoryForm

    def items_display(self, obj):
        display_text = ", ".join([
            "<a href={}>{}</a>".format(
                    reverse('admin:{}_{}_change'.format(obj._meta.app_label, obj._meta.model_name),
                    args=(child.pk,)),
                child.title)
             for child in obj.get_items
        ])
        if display_text:
            return mark_safe(display_text)
        return "-"

    items_display.short_description = "Позиции"

    list_display = (
        'title',
        'parent',
        'title_eng',
        'items_display'
    )

    list_filter = (
        'parent',
    )