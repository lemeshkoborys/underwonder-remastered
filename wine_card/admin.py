from django.contrib import admin
from .models import WineCategory, WineItem
from .forms import WineCategoryForm, WineItemForm
from django.urls import reverse
from django.utils.html import mark_safe


class CategoryFilter(admin.SimpleListFilter):

    title = 'Категория'
    parameter_name = 'category'

    def lookups(self, request, model_admin):
        list_tuple = []
        queryset = WineCategory.objects.filter(parent=None)
        for category in queryset:
            #print category
            list_tuple.append((category.id, category.title))
        return sorted(list_tuple, key=lambda tp: tp[1])

    def queryset(self, request, queryset):
        if self.value():
            return queryset.filter(parent=self.value())
        else:
            return queryset


class ItemFilter(admin.SimpleListFilter):

    title = 'Категория'
    parameter_name = 'category'

    def lookups(self, request, model_admin):
        list_tuple = []
        queryset = WineCategory.objects.filter(parent=None)
        for category in queryset:
            #print category
            list_tuple.append((category.id, category.title))
        return sorted(list_tuple, key=lambda tp: tp[1])

    def queryset(self, request, queryset):
        if self.value():
            print (self.value()) 
            category = WineCategory.objects.get(pk=self.value())
            print(category.get_childs)
            merge_query = queryset.filter(category=category)
            for subcategory in category.get_childs:
                merge_query = merge_query | subcategory.get_items
            return merge_query
        else:
            return queryset


@admin.register(WineCategory)
class WineCategoryModelAdmin(admin.ModelAdmin):

    form = WineCategoryForm

    def items_display(self, obj):
        WineCategory.objects.filter(parent=None)
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
        CategoryFilter,
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
        ItemFilter,
    )