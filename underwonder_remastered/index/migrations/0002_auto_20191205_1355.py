# Generated by Django 3.0 on 2019-12-05 11:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('index', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='section',
            name='title',
            field=models.CharField(max_length=120, verbose_name='Имя секции главного меню'),
        ),
    ]
