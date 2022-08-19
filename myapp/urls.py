from django.urls import path
from django.urls import re_path
from . import views

urlpatterns = [
    path('', views.adminLogin, name='adminLogin'),
    path('adminLogin', views.adminLogin, name='adminLogin'),
    path("logout", views.logout, name='logout'),
    path('dashboard', views.dashboard, name='dashboard'),
    path('user', views.user, name='user'),
    path('Symptomps', views.Symptomps, name='Symptomps'),
    path('disease', views.disease, name='disease'),
    path('profile', views.profile, name='profile'),
    path('treatment_explanation', views.treatment_explanation, name='treatment_explanation'),
    path('insertdisease', views.insertdisease, name='insertdisease'),
    path('updatedisease', views.updatedisease, name='updatedisease'),
    path('overview', views.overview, name='overview'),
    path('accountSettings', views.accountSettings, name='accountSettings'),

    re_path(r'^insert_title/$', view=views.insert_title, name='insert_title'),
    re_path(r'^remove_item/$', view=views.remove_item, name='remove_item'),
    re_path(r'^select_edit_item/$', view=views.select_edit_item, name='select_edit_item'),
    re_path(r'^update_title/$', view=views.update_title, name='update_title'),

    re_path(r'^insert_symptomp/$', view=views.insert_symptomp, name='insert_symptomp'),
    re_path(r'^delete_symptomp/$', view=views.delete_symptomp, name='delete_symptomp'),
    re_path(r'^select_symptomp/$', view=views.select_symptomp, name='select_symptomp'),
    re_path(r'^update_symptomp/$', view=views.update_symptomp, name='update_symptomp'),

    re_path(r'^insert_disease/$', view=views.insert_disease, name='insert_disease'),
    re_path(r'^delete_disease/$', view=views.delete_disease, name='delete_disease'),
    re_path(r'^select/', view=views.select, name='select'),
    re_path(r'^update_disease/$', view=views.update_disease, name='update_disease'),

    re_path(r'^insert_ex_tr/$', view=views.insert_ex_tr, name='insert_ex_tr'),
    re_path(r'^delete_ex_tr/$', view=views.delete_ex_tr, name='delete_ex_tr'),
    re_path(r'^select_ex_tr/$', view=views.select_ex_tr, name='select_ex_tr'),
    re_path(r'^update_ex_tr/$', view=views.update_ex_tr, name='update_ex_tr'),

    re_path(r'^user_status/$', view=views.user_status, name='user_status'),
    re_path(r'^insert_profile/$', view=views.insert_profile, name='insert_profile'),
    re_path(r'^image_upload/$', view=views.image_upload, name='image_upload'),

    re_path(r'^change_password/$', view=views.change_password, name='change_password'),
    re_path(r'^change_admin/$', view=views.change_admin, name='change_admin'),



]