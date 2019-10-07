from django.contrib import admin

# Register your models here.
# superuser:    name: admin ； password:admin123

from blog.models import Article

admin.site.register(Article)