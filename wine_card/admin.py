from django.contrib import admin
from .models import WineCategory, WineItem
from .forms import WineCategoryForm, WineItemForm
from django.urls import reverse
from django.utils.html import mark_safe
from django.contrib.admin import SimpleListFilter


class CategoryFilter(SimpleListFilter):

    title = 'Категория'
    parameter_name = 'category'

    def lookups(self, request, model_admin):
        return [x.title for x in WineCategory if not x.parent]

    def queryset(self, request, queryset):
        if self.value():
            return queryset.filter(parent=None)
        else:
            return queryset


@admin.register(WineCategory)
class WineCategoryModelAdmin(admin.ModelAdmin):

    form = WineCategoryForm

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

    list_display = (
        'title',
        'parent',
        'title_eng',
        'items_display'
    )

    list_filter = (
        'parent',
        SimpleListFilter,
    )


@admin.register(WineItem)
class WineItemModelAdmin(admin.ModelAdmin):

    form = WineItemForm

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