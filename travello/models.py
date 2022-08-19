from django.db import models

# Create your models here.
class Destination(models.Model):

    name = models.CharField(max_length=30, default="")
    img = models.ImageField(upload_to='./pics', default="noimage.jpg")
    desc = models.TextField(default="null")
    price = models.IntegerField(default=500)
    offer = models.BooleanField(default=False)

class Lists(models.Model):

    category = models.CharField(max_length=30)

    class Meta:
	    db_table = "travello_lists"

class Disease(models.Model):

    Covid_19 = models.CharField(max_length=30)
    Cold = models.CharField(max_length=30)
    Flu = models.CharField(max_length=30)
    Asthma = models.CharField(max_length=30)
    Lung_cancer = models.CharField(max_length=30)
    Epilepsy  = models.CharField(max_length=30)
    Pneumonia  = models.CharField(max_length=30)
    Rabies  = models.CharField(max_length=30)
    Diabetes  = models.CharField(max_length=30)
    Food_poisoning   = models.CharField(max_length=30)
    Allergies  = models.CharField(max_length=30)
    Heart_failure  = models.CharField(max_length=30)
    Bladder_cancer  = models.CharField(max_length=30)
    Bone_cancer  = models.CharField(max_length=30)
    Gingivitis  = models.CharField(max_length=30)
    Kidney_stone = models.CharField(max_length=30)
    High_blood_pressure  = models.CharField(max_length=30)
    Anemia  = models.CharField(max_length=30)
    Hemorrhagic_fevers  = models.CharField(max_length=30)
    Norovirus_infection  = models.CharField(max_length=30)
    Chronic_kidney_disease  = models.CharField(max_length=30)
    Rotavirus_infection  = models.CharField(max_length=30)
    Fatty_liver  = models.CharField(max_length=30)
    Dengue  = models.CharField(max_length=30)
    Osteoporosis  = models.CharField(max_length=30)
    Fibromyalgia  = models.CharField(max_length=30)
    Meningitis  = models.CharField(max_length=30)
    E_coli  = models.CharField(max_length=30)
    Pink_eye  = models.CharField(max_length=30)
    Salmonella_infection  = models.CharField(max_length=30)
    Malaria  = models.CharField(max_length=30)
    Tuberculosis  = models.CharField(max_length=30)
    Scarlet_fever  = models.CharField(max_length=30)

    class Meta:
	    db_table = "disease_lists"

class Symptomps_List(models.Model):

    symptomps = models.CharField(max_length=30)
    list_1 = models.CharField(max_length=30)
    list_2 = models.CharField(max_length=30)
    list_3 = models.CharField(max_length=30)
    list_4 = models.CharField(max_length=30)
    list_5 = models.CharField(max_length=30)

    class Meta:
	    db_table = "symptomps_list"

class Title_lists(models.Model):

    title = models.CharField(max_length=30)

    class Meta:
	    db_table = "title_lists"

class Disease_explanation(models.Model):

    title = models.CharField(max_length=30)
    explanation = models.TextField()
    
    class Meta:
	    db_table = "disease_explanation"

class Explanation_treatment(models.Model):

    title = models.CharField(max_length=30)
    explanation = models.TextField()
    treatment = models.TextField()
    
    class Meta:
	    db_table = "explanation_treatment"


