# -*- coding: utf-8 -*-
# Generated by Django 1.11.16 on 2019-03-15 07:37
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0006_user_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='lunbo1',
            name='alt',
            field=models.CharField(max_length=200),
        ),
        migrations.AlterField(
            model_name='lunbo1',
            name='div',
            field=models.CharField(max_length=200),
        ),
        migrations.AlterField(
            model_name='lunbo1',
            name='said1',
            field=models.CharField(max_length=200),
        ),
        migrations.AlterField(
            model_name='lunbo1',
            name='said2',
            field=models.CharField(max_length=200),
        ),
    ]
