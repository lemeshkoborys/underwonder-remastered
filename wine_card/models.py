from django.db import models
from main_menu.models import AbstractItem, AbstractCategory


class WineItem(AbstractItem):

    class Meta:
        db_table = 'wine_items'
        verbose_name = 'Вино'
        verbose_name_plural = 'Вина'

    def weight_layout(self):
        return str(self.weight) + ' Л'

    category = models.ForeignKey(
        'wine_card.WineCategory',
        on_delete=models.CASCADE,
        null=True,
        blank=True,
        verbose_name='Категория'
    )



class WineCategory(AbstractCategory):

    class Meta:
        db_table = 'wine_categories'
        verbose_name = 'Категория'
        verbose_name_plural = 'Категории вин'