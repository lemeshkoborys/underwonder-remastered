# Generated by Django 2.1.3 on 2018-11-26 20:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('drinks', '0002_auto_20181126_2033'),
    ]

    operations = [
        migrations.AlterField(
            model_name='drinkitem',
            name='price',
            field=models.CharField(max_length=20, verbose_name='Цена'),
        ),
        migrations.AlterField(
            model_name='drinkitem',
            name='weight',
            field=models.CharField(max_length=20, verbose_name='Вес/Литраж'),
        ),
    ]
