from django import forms 
from .models import Admin_profile
  
class UploadImageForm(forms.ModelForm): 
  
    class Meta: 
        model = Admin_profile 
        fields = ['image']