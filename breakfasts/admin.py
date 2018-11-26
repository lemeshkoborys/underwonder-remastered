from django.contrib import admin
from .models import BreakfastItem
from .forms import BreakfastItemForm



@admin.register(BreakfastItem)
class BreakfastItemModelAdmin(admin.ModelAdmin):

    form = BreakfastItemForm

    list_display = (
        'title',
        'price',
        'weight',
        'subitems_admin_layout',
        'title_eng'
    )

