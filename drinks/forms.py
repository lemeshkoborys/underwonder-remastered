from django import forms
from .models import DrinkCategory, DrinkItem

class DrinkCategoryForm(forms.ModelForm):

    class Meta:
        model = DrinkCategory
        fields = '__all__'

        widgets = {
            'title': forms.TextInput(attrs={'size': 120}),
            'title_eng': forms.TextInput(attrs={'size': 120}),
            'description': forms.Textarea(attrs={'rows': 3, 'cols':120}),
            'description_eng': forms.Textarea(attrs={'rows': 3, 'cols':120}),
        }



class DrinkItemForm(forms.ModelForm):
    
    class Meta:
        model = DrinkItem
        fields = '__all__'

        widgets = {
            'title': forms.TextInput(attrs={'size': 120}),
            'title_eng': forms.TextInput(attrs={'size': 120}),
            'content': forms.Textarea(attrs={'rows': 3, 'cols':120}),
            'content_eng': forms.Textarea(attrs={'rows': 3, 'cols':120}),
        }