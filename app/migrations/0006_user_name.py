# -*- coding: utf-8 -*-
# Generated by Django 1.11.16 on 2019-03-15 03:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0005_auto_20190315_1109'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='name',
            field=models.CharField(default='', max_length=200),
        ),
    ]
