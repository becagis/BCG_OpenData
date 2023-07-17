from django.contrib import admin
from .models import ThemeOptions


@admin.register(ThemeOptions)
class ThemeOptionsAdmin(admin.ModelAdmin):
    pass