from django.db import models

class Admin_profile(models.Model):

    firstName = models.TextField(max_length=30)
    lastName = models.TextField(max_length=30)
    moblieNumber = models.TextField(max_length=30)
    interests = models.CharField(max_length=30)
    occupation = models.CharField(max_length=30)
    about = models.CharField(max_length=30)
    websiteURL = models.TextField(max_length=30)
    image = models.ImageField(upload_to='images/')

    class Meta:
	    db_table = "admin_profile"