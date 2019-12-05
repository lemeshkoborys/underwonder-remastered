from django.shortcuts import render, redirect
from .models import Section
from underwonder_remastered.main_menu.models import MenuFile


def view_404(request, *args, **kwargs):
    return redirect('/')


def render_index(request):
    about_section = Section.objects.get(title="Про нас")
    menu_section = Section.objects.get(title="Меню")
    photo_text_section = Section.objects.get(title="Текст на фото после меню")
    interior = Section.objects.get(title="Інтер’єр")
    phone = Section.objects.get(title="Телефон")
    menu_file = MenuFile.objects.get()
    context = {
        'about': about_section,
        'menu': menu_section,
        'photo_text': photo_text_section,
        'interior': interior,
        'phone': phone,
        'menu_file': menu_file
    }
    return render(request, 'index.html', context)


def render_index_eng(request):
    about_section = Section.objects.get(title="Про нас")
    menu_section = Section.objects.get(title="Меню")
    photo_text_section = Section.objects.get(title="Текст на фото после меню")
    interior = Section.objects.get(title="Інтер’єр")
    phone = Section.objects.get(title="Телефон")
    context = {
        'about': about_section,
        'menu': menu_section,
        'photo_text': photo_text_section,
        'interior': interior,
        'phone': phone
    }
    return render(request, 'eng-index.html', context)
