# Generated by Django 3.2.20 on 2023-07-17 09:08

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('geonode_themes', '0014_auto_20220214_0910'),
    ]

    operations = [
        migrations.CreateModel(
            name='ThemeOptions',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('header_html', models.TextField(blank=True, null=True)),
                ('footer_html', models.TextField(blank=True, null=True)),
                ('theme', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='geonode_themes.geonodethemecustomization')),
            ],
        ),
    ]
