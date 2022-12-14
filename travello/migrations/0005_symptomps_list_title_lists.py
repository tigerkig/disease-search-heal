# Generated by Django 4.0.1 on 2022-01-18 00:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('travello', '0004_disease_lists'),
    ]

    operations = [
        migrations.CreateModel(
            name='Symptomps_List',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('list_1', models.CharField(max_length=30)),
                ('list_2', models.CharField(max_length=30)),
                ('list_3', models.CharField(max_length=30)),
                ('list_4', models.CharField(max_length=30)),
                ('list_5', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'symptomps_list',
            },
        ),
        migrations.CreateModel(
            name='Title_lists',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'title_lists',
            },
        ),
    ]
