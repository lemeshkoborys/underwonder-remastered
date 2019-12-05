from django.db import models


class MenuFile(models.Model):
    link = 'Изменить'

    file = models.FileField(verbose_name='Файл меню')

    class Meta:
        verbose_name = 'Файл меню'
        verbose_name_plural = 'Файл меню'
