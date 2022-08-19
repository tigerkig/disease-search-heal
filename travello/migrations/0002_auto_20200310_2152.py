# Generated by Django 3.0.2 on 2020-03-10 16:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('travello', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='destination',
            name='desc',
            field=models.TextField(default='null'),
        ),
        migrations.AddField(
            model_name='destination',
            name='img',
            field=models.ImageField(default='noimage.jpg', upload_to='pics'),
        ),
        migrations.AddField(
            model_name='destination',
            name='name',
            field=models.CharField(default='', max_length=30),
        ),
        migrations.AddField(
            model_name='destination',
            name='offer',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='destination',
            name='price',
            field=models.IntegerField(default=500),
        ),
    ]
