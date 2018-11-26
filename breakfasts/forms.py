from django import forms
from .models import BreakfastItem


class BreakfastItemForm(forms.ModelForm):

    class Meta:
        model = BreakfastItem
        fields = '__all__'
        widgets = {
            'title': forms.TextInput(attrs={'size': 120}),
            'title_eng': forms.TextInput(attrs={'size': 120}),
            'content': forms.Textarea(attrs={'rows': 3, 'cols':120}),
            'content_eng': forms.Textarea(attrs={'rows': 3, 'cols':120}),
        }