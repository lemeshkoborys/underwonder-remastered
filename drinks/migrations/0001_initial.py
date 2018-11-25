# Generated by Django 2.1.3 on 2018-11-25 10:47

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='DrinkCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=120, verbose_name='Наименование категории')),
                ('title_eng', models.CharField(max_length=120, verbose_name='Наименование категории ENG')),
                ('description', models.TextField(blank=True, null=True, verbose_name='Описание категории')),
                ('description_eng', models.TextField(blank=True, null=True, verbose_name='Описание категории ENG')),
                ('small_description', models.BooleanField(default=False, help_text='Делает описание меньше. Пример         описание у спиртных напитков в красных скобках', verbose_name='Описание маленьким текстом')),
                ('parent', models.ForeignKey(blank=True, help_text='Для какой категории данная будет родительской', null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='drinks.DrinkCategory', verbose_name='Родительская категория')),
            ],
            options={
                'verbose_name': 'Категория',
                'verbose_name_plural': 'Категории напитков',
                'db_table': 'drink_categories',
            },
        ),
        migrations.CreateModel(
            name='DrinkItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=120, verbose_name='Наименование позиции')),
                ('title_eng', models.CharField(default='', max_length=120, verbose_name='Наименование позиции ENG')),
                ('content', models.TextField(blank=True, default='', verbose_name='Описание категории')),
                ('price', models.FloatField(validators=[django.core.validators.MinValueValidator(0.1, 'Цена не может иметь отрицательное значение')], verbose_name='Цена')),
                ('weight', models.FloatField(validators=[django.core.validators.MinValueValidator(0.1, 'Укажите реальный вес')], verbose_name='Вес/Литраж')),
                ('category', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='drinks.DrinkCategory', verbose_name='Категория')),
            ],
            options={
                'verbose_name': 'Напиток',
                'verbose_name_plural': 'Напитки',
                'db_table': 'drink_items',
            },
        ),
    ]
