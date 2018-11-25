from django.db import models
from main_menu.models import AbstractItem


class BreakfastItem(AbstractItem):

    class Meta:
        db_table = 'breakfast_items'
        verbose_name = 'Позиция завтрака'
        verbose_name_plural = 'Позиции завтрака'

    parent = models.ForeignKey(
        'self',
        blank=True,
        null=True,
        default=None,
        verbose_name='Родительская позиция',
        on_delete=models.CASCADE,
        help_text="Если позиция может иметь несколько вариантов подачи, выбрать её родительскую." \
        "Пример - омлет в разделе Завтраков."
    )

    def get_subitems(self):
        subitems = BreakfastItem.objects.filter(parent=self)
        return_data = [x.title for x in subitems]
        return return_data

    get_subitems.short_description = 'Вариации'
