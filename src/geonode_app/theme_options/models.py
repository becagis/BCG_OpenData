from django.db import models
from geonode.themes.models import GeoNodeThemeCustomization

# Create your models here.
class ThemeOptions(models.Model):
    theme = models.ForeignKey(GeoNodeThemeCustomization, on_delete=models.CASCADE, null=True)
    header_html = models.TextField(null=True, blank=True)
    footer_html = models.TextField(null=True, blank=True)
