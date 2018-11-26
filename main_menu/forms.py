from django import forms
from .models import MenuCategory, MenuItem
from django.forms import TextInput, Textarea
from django.db import models

class MenuCategoryForm(forms.ModelForm):

    class Meta:
        model = MenuCategory
        fields = '__all__'
        widgets = {
            'title': forms.TextInput(attrs={'size': 120}),
            'title_eng': forms.TextInput(attrs={'size': 120}),
            'description': forms.Textarea(attrs={'rows': 3, 'cols':120}),
            'description_eng': forms.Textarea(attrs={'rows': 3, 'cols':120}),
        }

class MenuItemForm(forms.ModelForm):

    class Meta:
        model = MenuItem
        fields = '__all__'
        widgets = {
            'title': forms.TextInput(attrs={'size': 120}),
            'title_eng': forms.TextInput(attrs={'size': 120}),
            'content': forms.Textarea(attrs={'rows': 3, 'cols':120}),
            'content_eng': forms.Textarea(attrs={'rows': 3, 'cols':120}),
        }