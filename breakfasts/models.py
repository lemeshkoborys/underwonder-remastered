from django.db import models
from main_menu.models import AbstractItem


class BreakfastItem(AbstractItem):

    class Meta:
        db_table = 'breakfast_items'
        verbose_name = 'Позиция завтрака'
        verbose_name_plural = 'Позиции завтрака'

    bold = models.BooleanField(
        default=False,
        verbose_name='Наименование жирным текстом',
        help_text='Выбирете этот параметр если хотите, \
        чтобы наименование позиции было выделено жирным текстом'
    )

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
        return BreakfastItem.objects.filter(parent=self)

    def subitems_admin_layout(self):
        return [x.title for x in BreakfastItem.objects.filter(parent=self)]

    subitems_admin_layout.short_description = 'Вариации'
