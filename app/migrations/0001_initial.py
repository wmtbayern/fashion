# -*- coding: utf-8 -*-
# Generated by Django 1.11.16 on 2019-03-14 13:16
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='lunbo',
            fields=[
                ('id', models.CharField(max_length=100, primary_key=True, serialize=False)),
                ('img', models.CharField(max_length=200)),
                ('wen', models.CharField(max_length=200)),
                ('alt', models.CharField(max_length=100)),
            ],
        ),
    ]
