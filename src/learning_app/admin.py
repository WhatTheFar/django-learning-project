from django.contrib import admin
from learning_app.models import Topic
from learning_app.models import Entry

# Register your models here.
admin.site.register(Topic)
admin.site.register(Entry)