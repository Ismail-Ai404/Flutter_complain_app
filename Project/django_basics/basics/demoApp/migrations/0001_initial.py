# Generated by Django 4.0.2 on 2022-02-27 18:59

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Location',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('value', models.CharField(max_length=30)),
            ],
        ),
    ]