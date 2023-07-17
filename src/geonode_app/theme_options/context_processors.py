from .models import ThemeOptions
from geonode.themes.models import GeoNodeThemeCustomization, THEME_CACHE_KEY


def theme_options(request):
    options = ThemeOptions.objects.first() or {}

    return {
        'theme_options': options
    }