from django.urls import path
from django.urls import re_path
from . import views

urlpatterns = [
    path("", views.index, name='index'),
    path("about", views.about, name='about'),
    path("contact", views.contact, name='contact'),
    path("diagnosis", views.diagnosis, name='diagnosis'),
    re_path(r'^search_data/$', view=views.search_data, name='search_data'),
    re_path(r'^explanation/$', view=views.explanation, name='explanation'),
    re_path(r'^treatment/$', view=views.treatment, name='treatment'),
]