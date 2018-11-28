from django.shortcuts import render
from .models import Section

def render_index(request):
    about_section = Section.objects.get(title="Про нас")
    menu_section = Section.objects.get(title="Меню")
    photo_text_section = Section.objects.get(title="Текст на фото после меню")
    interior = Section.objects.get(title="Інтер’єр")
    context = {
        'about': about_section,
        'menu': menu_section,
        'photo_text': photo_text_section,
        'interior': interior
    }
    return render(request, 'index.html', context)

def render_index_eng(request):
    about_section = Section.objects.get(title="Про нас")
    menu_section = Section.objects.get(title="Меню")
    photo_text_section = Section.objects.get(title="Текст на фото после меню")
    interior = Section.objects.get(title="Інтер’єр")
    context = {
        'about': about_section,
        'menu': menu_section,
        'photo_text': photo_text_section,
        'interior': interior
    }
    return render(request, 'eng-index.html', context)