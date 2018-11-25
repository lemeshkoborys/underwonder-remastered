from django.db import models
from main_menu.models import AbstractItem, AbstractCategory


class DrinkItem(AbstractItem):

    class Meta:
        db_table = 'drink_items'
        verbose_name = 'Напиток'
        verbose_name_plural = 'Напитки'

    def weight_layout(self):
        return str(self.weight) + ' Л'

    category = models.ForeignKey(
        'drinks.DrinkCategory',
        on_delete=models.CASCADE,
        null=True,
        blank=True,
        verbose_name='Категория'
    )


class DrinkCategory(AbstractCategory):

    class Meta:
        db_table = 'drink_categories'
        verbose_name = 'Категория'
        verbose_name_plural = 'Категории напитков'