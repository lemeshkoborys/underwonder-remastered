from django import forms
from .models import WineCategory, WineItem


class WineItemForm(forms.ModelForm):

    class Meta:
        model = WineItem
        fields = '__all__'
        widgets = {
            'title': forms.TextInput(attrs={'size': 120}),
            'title_eng': forms.TextInput(attrs={'size': 120}),
            'content': forms.Textarea(attrs={'rows': 3, 'cols':120}),
            'content_eng': forms.Textarea(attrs={'rows': 3, 'cols':120}),
        }

class WineCategoryForm(forms.ModelForm):

    class Meta:
        model = WineCategory
        fields = '__all__'
        widgets = {
            'title': forms.TextInput(attrs={'size': 120}),
            'title_eng': forms.TextInput(attrs={'size': 120}),
            'description': forms.Textarea(attrs={'rows': 3, 'cols':120}),
            'description_eng': forms.Textarea(attrs={'rows': 3, 'cols':120}),
        }