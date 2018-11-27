from django.shortcuts import render
from breakfasts.models import BreakfastItem
from main_menu.models import MenuCategory
from wine_card.models import WineCategory
from drinks.models import DrinkCategory


def render_menu(request):
    breakasts = BreakfastItem.objects.all().order_by('-bold')
    main_categories = MenuCategory.objects.all().order_by('-title')
    wine_card = WineCategory.objects.all().order_by('-title')
    drinks = DrinkCategory.objects.all().order_by('-title')
    context = {
        'breakasts': breakasts,
        'main_categories': main_categories,
        'wine_card': wine_card,
        'drinks': drinks
    }
    return render(request, 'menu/menu-index.html', context)


def render_menu_eng(request):
    breakasts = BreakfastItem.objects.all().order_by('-bold')
    main_categories = MenuCategory.objects.all().order_by('-title')
    wine_card = WineCategory.objects.all().order_by('-title')
    drinks = DrinkCategory.objects.all().order_by('-title')
    context = {
        'breakasts': breakasts,
        'main_categories': main_categories,
        'wine_card': wine_card,
        'drinks': drinks
    }
    return render(request, 'menu/eng-menu-index.html', context)