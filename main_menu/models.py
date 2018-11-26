from django.db import models
from django.core.validators import (
    MaxLengthValidator, MaxValueValidator, MinLengthValidator,
    MinValueValidator,
)


class AbstractItem(models.Model):

    class Meta:
        abstract = True

    title = models.CharField(
        max_length=120,
        null=False,
        blank=False,
        verbose_name='Наименование позиции',
        default=""
    )

    title_eng = models.CharField(
        max_length=120,
        null=False,
        blank=True,
        verbose_name='Наименование позиции ENG',
        default=""
    )

    content = models.TextField(
        blank=True,
        null=False,
        default="",
        verbose_name='Описание категории'
    )

    price = models.FloatField(
        verbose_name='Цена',
        validators=[MinValueValidator(0.1, 'Цена не может иметь отрицательное значение')],
        blank=False,
        null=False
    )

    weight = models.FloatField(
        verbose_name='Вес/Литраж',
        blank=False,
        null=False,
        validators=[MinValueValidator(0.1, 'Укажите реальный вес')]
    )


    def __str__(self):
        return self.title

    def price_layout(self):
        return str(self.price) + ' грн'

    def weight_layout(self):
        return str(self.weight) + ' гр'

    weight_layout.short_description = 'Вес'
    price_layout.short_description = 'Цена'
    

class MenuItem(AbstractItem):

    class Meta:
        db_table = 'menu_items'
        verbose_name = 'Позиция'
        verbose_name_plural = 'Позиции'

    category = models.ForeignKey(
        'main_menu.MenuCategory',
        on_delete=models.CASCADE,
        null=True,
        blank=True,
        verbose_name='Категория'
    )


class AbstractCategory(models.Model):

    class Meta:
        abstract = True

    title = models.CharField(
        max_length=120,
        null=False,
        blank=False,
        verbose_name='Наименование категории'
    )

    title_eng = models.CharField(
        max_length=120,
        null=False,
        blank=False,
        verbose_name='Наименование категории ENG'
    )

    description = models.TextField(
        blank=True,
        null=True,
        verbose_name='Описание категории'
    )

    description_eng = models.TextField(
        blank=True,
        null=True,
        verbose_name='Описание категории ENG'
    )

    small_description = models.BooleanField(
        default=False,
        verbose_name='Описание маленьким текстом',
        help_text='Делает описание меньше. Пример \
        описание у спиртных напитков в красных скобках'
    )

    parent = models.ForeignKey(
        'self',
        verbose_name='Родительская категория',
        help_text='Для какой категории данная будет родительской',
        on_delete=models.CASCADE,
        related_name='children',
        blank=True,
        null=True
    )

    def __str__(self):
        full_path = [self.title]

        k = self.parent

        while k is not None:
            full_path.append(k.title)
            k = k.parent

        return ' -> '.join(full_path[::-1])


class MenuCategory(AbstractCategory):

    class Meta:
        db_table = 'menu_categories'
        verbose_name = 'Категория'
        verbose_name_plural = 'Категории'

    @property
    def get_items(self):
        return MenuItem.objects.filter(category=self)

    @property
    def get_childs(self):
        return MenuCategory.objects.filter(parent=self)