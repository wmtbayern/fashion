# -*- coding: utf-8 -*-
# Generated by Django 1.11.16 on 2019-03-15 03:09
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0004_auto_20190315_1109'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='phone',
            field=models.CharField(max_length=100, unique=True),
        ),
    ]
