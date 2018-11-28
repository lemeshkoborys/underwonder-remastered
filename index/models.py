from django.db import models


class Section(models.Model):

    class Meta:
        db_table = 'index_page_content'
        verbose_name = 'Раздел на главной странице'
        verbose_name_plural = 'Разделы на главной странице'

    title = models.CharField(
        max_length=120,
        verbose_name='Имя секции главного меню',
        editable=False
    )

    content = models.TextField(
        verbose_name='Текст секции'
    )
    
    content_eng = models.TextField(
        verbose_name='Текст секции ENG'
    )
    

    
