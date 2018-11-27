from django.contrib import admin
from .models import DrinkItem, DrinkCategory
from .forms import DrinkCategoryForm, DrinkItemForm
from django.urls import reverse
from django.utils.html import mark_safe
from wine_card.admin import CategoryFilter, ItemFilter

@admin.register(DrinkItem)
class DrinkItemModelAdmin(admin.ModelAdmin):

    form = DrinkItemForm

    list_display = (
        'title',
        'category',
        'price',
        'weight',
        'title_eng'
    )

    list_filter = (
        ItemFilter,
    )


@admin.register(DrinkCategory)
class DrinkCategoryModelAdmin(admin.ModelAdmin):

    def items_display(self, obj):
        display_text = "".join([
            "<a href={}>{}</a>,<br/>".format(
                    reverse('admin:{}_{}_change'.format(child._meta.app_label, child._meta.model_name),
                    args=(child.pk,)),
                child.title)
             for child in obj.get_items
        ])
        if display_text:
            return mark_safe(display_text)
        return "-"

    items_display.short_description = "Позиции"

    form = DrinkCategoryForm

    list_display = (
        'title',
        'parent',
        'title_eng',
        'items_display'
    )

    list_filter = (
        CategoryFilter,
    )