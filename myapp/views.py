from array import array
from multiprocessing.sharedctypes import Array
from django.shortcuts import render, redirect
from django.contrib.auth.models import User, auth
from django.contrib import messages
from django.http import JsonResponse
from travello.models import Disease_explanation
from travello.models import Lists
from travello.models import Symptomps_List
from travello.models import Explanation_treatment
from .models import Admin_profile
from django.contrib.auth.hashers import make_password
from .forms import *
import json

# Create your views here.
def dashboard(request):
    profile = Admin_profile.objects.all()
    user_count = User.objects.filter(is_superuser=0).count()
    symptoms_count = Lists.objects.filter().count()
    disease_count = Symptomps_List.objects.filter().count()
    ex_tr_count = Explanation_treatment.objects.filter().count()
    All_title = Disease_explanation.objects.all()
    return render(request, 'dashboard.html', {'profile': profile, 'All_title':All_title, 'user_count':user_count, 'symptoms_count':symptoms_count, 'disease_count':disease_count, 'ex_tr_count':ex_tr_count})

def disease(request):
    profile = Admin_profile.objects.all()
    disease = Symptomps_List.objects.all()
    return render(request, 'disease.html', {'profile': profile, 'lists':disease})

def profile(request):
    profile = Admin_profile.objects.all()
    return render(request, 'profile.html', {'profile': profile})

def overview(request):
    profile = Admin_profile.objects.all()
    return render(request, 'overview.html', {'profile': profile})

def accountSettings(request):
    profile = Admin_profile.objects.all()
    return render(request, 'accountSettings.html', {'profile': profile})

def Symptomps(request):
    profile = Admin_profile.objects.all()
    lists = Lists.objects.all()
    return render(request, 'Symptomps.html', {'lists':lists, 'profile': profile})

def treatment_explanation(request):
    profile = Admin_profile.objects.all()
    lists = Explanation_treatment.objects.all()
    return render(request, 'treatment_explanation.html', {'lists':lists, 'profile': profile})

def user(request):
    profile = Admin_profile.objects.all()
    users = User.objects.filter(is_superuser = 0).values()
    return render(request, 'user.html', {'users':users, 'profile': profile})

def insertdisease(request):
    profile = Admin_profile.objects.all()
    lists = Lists.objects.all()
    return render(request, 'insertDisease.html', {'lists':lists, 'profile': profile})

def adminLogin(request):
    if request.method == 'POST':
        username = request.POST['admin_username']
        password = request.POST['admin_password']

        user = auth.authenticate(username=username, password=password)

        if user is not None:
            auth.login(request, user)
            return redirect("/admin/dashboard")
        else:
            messages.info(request,'invalid credentials')
            return redirect("/admin")
    else:
        return render(request, 'adminlogin.html')

def logout(request):
    auth.logout(request)
    return redirect('/admin')

def insert_title(request): 
    if request.method == 'POST':
        title = request.POST['title']
        explanation = request.POST['explanation']
        Disease_explanation.objects.create(title=title, explanation=explanation)
        return JsonResponse({'instance': 'success'})

def remove_item(request): 
    if request.method == 'POST':
        id = request.POST['id']
        Disease_explanation.objects.filter(id=id).delete()
        return JsonResponse({'instance': 'success'})

def select_edit_item(request): 
    if request.method == 'POST':
        id = request.POST['id']
        result = Disease_explanation.objects.filter(id = id).values('title')
        result_1 = Disease_explanation.objects.filter(id = id).values('explanation')
        title = map(str, result)
        send_title = ''.join(title)
        explanation = map(str, result_1)
        send_explanation = ''.join(explanation)
        return JsonResponse({'title': send_title, 'explanation': send_explanation})

def update_title(request): 
    if request.method == 'POST':
        title = request.POST['title']
        explanation = request.POST['explanation']
        id = request.POST['id']
        edit = Disease_explanation.objects.get(id=id) 
        edit.title = title
        edit.explanation = explanation
        edit.save()
        return JsonResponse({'instance': 'success'})

def insert_symptomp(request): 
    if request.method == 'POST':
        category = request.POST['category']
        Lists.objects.create(category=category)
        return JsonResponse({'instance': 'success'})
        
def delete_symptomp(request): 
    if request.method == 'POST':
        id = request.POST['id']
        before_object = "".join(id)
        dataValues = json.loads(before_object)
        count = 0

        while count < len(dataValues) :

            Lists.objects.filter(id=dataValues[count]).delete()
            count += 1

        return JsonResponse({'instance': 'success'})

def select_symptomp(request): 
    if request.method == 'POST':
        id = request.POST['id']
        category = Lists.objects.filter(id = id).values('category')
        title = map(str, category)
        send_title = ''.join(title)
        return JsonResponse({'instance': send_title})

def update_symptomp(request): 
    if request.method == 'POST':
        id = request.POST['id']
        category = request.POST['category']
        edit = Lists.objects.get(id=id) 
        edit.category = category
        edit.save()
        return JsonResponse({'instance': 'success'})

def insert_disease(request): 
    if request.method == 'POST':
        disease_title = request.POST['disease_title']
        symptomp_1 = request.POST['symptomp_1']
        symptomp_2 = request.POST['symptomp_2']
        symptomp_3 = request.POST['symptomp_3']
        symptomp_4 = request.POST['symptomp_4']
        symptomp_5 = request.POST['symptomp_5']
        Symptomps_List.objects.create(symptomps=disease_title, list_1=symptomp_1, list_2=symptomp_2, list_3=symptomp_3, list_4=symptomp_4, list_5=symptomp_5)
        return JsonResponse({'instance': 'success'})

def delete_disease(request): 
    if request.method == 'POST':
        id = request.POST['id']
        before_object = "".join(id)
        dataValues = json.loads(before_object)
        count = 0

        while count < len(dataValues) :
            Symptomps_List.objects.filter(id=dataValues[count]).delete()
            count += 1

        return JsonResponse({'instance': 'success'})

def updatedisease(request): 
    lists = Lists.objects.all()
    return render(request, 'updateDisease.html', {'lists':lists})

def select(request):
    if request.method == 'POST':
        id = request.POST['id']
        category = Symptomps_List.objects.filter(id = id).values()
        title = map(str, category)
        send_title = ''.join(title)
        return JsonResponse({'instance': send_title})

def update_disease(request): 
    if request.method == 'POST':
        id = request.POST['id']
        disease_title = request.POST['disease_title']
        symptomp_1 = request.POST['symptomp_1']
        symptomp_2 = request.POST['symptomp_2']
        symptomp_3 = request.POST['symptomp_3']
        symptomp_4 = request.POST['symptomp_4']
        symptomp_5 = request.POST['symptomp_5']
        edit = Symptomps_List.objects.get(id=id) 
        edit.symptomps = disease_title
        edit.list_1 = symptomp_1
        edit.list_2 = symptomp_2
        edit.list_3 = symptomp_3
        edit.list_4 = symptomp_4
        edit.list_5 = symptomp_5
        edit.save()
        return JsonResponse({'instance': 'success'})

def insert_ex_tr(request): 
    if request.method == 'POST':
        disease = request.POST['disease']
        explanation = request.POST['explanation']
        treatment = request.POST['treatment']
        Explanation_treatment.objects.create(title=disease, explanation=explanation, treatment=treatment)
        return JsonResponse({'instance': 'success'})

def delete_ex_tr(request): 
    if request.method == 'POST':
        id = request.POST['id']
        before_object = "".join(id)
        dataValues = json.loads(before_object)
        count = 0

        while count < len(dataValues) :
            Explanation_treatment.objects.filter(id=dataValues[count]).delete()
            count += 1

        return JsonResponse({'instance': 'success'})

def select_ex_tr(request): 
    if request.method == 'POST':
        id = request.POST['id']
        title = Explanation_treatment.objects.filter(id = id).values('title')
        explanation = Explanation_treatment.objects.filter(id = id).values('explanation')
        treatment = Explanation_treatment.objects.filter(id = id).values('treatment')
        title_str = map(str, title)
        explanation_str = map(str, explanation)
        treatment_str = map(str, treatment)
        send_title = ''.join(title_str)
        send_explanation = ''.join(explanation_str)
        send_treatment = ''.join(treatment_str)
        return JsonResponse({'disease': send_title, 'explanation':send_explanation, 'treatment':send_treatment})

def update_ex_tr(request): 
    if request.method == 'POST':
        id = request.POST['id']
        disease = request.POST['disease']
        explanation = request.POST['explanation']
        treatment = request.POST['treatment']
        edit = Explanation_treatment.objects.get(id=id) 
        edit.title = disease
        edit.explanation = explanation
        edit.treatment = treatment
        edit.save()
        return JsonResponse({'instance': 'success'})

def user_status(request): 
    if request.method == 'POST':
        id = request.POST['id']
        status = request.POST['status']
        edit = User.objects.get(id=id) 
        edit.is_active = status
        edit.save()
        return JsonResponse({'instance': 'success'})

def insert_profile(request):
    if request.method == 'POST':
        id = 1
        firstName = request.POST['firstName']
        lastName = request.POST['lastName']
        moblieNumber = request.POST['moblieNumber']
        interests = request.POST['interests']
        occupation = request.POST['occupation']
        about = request.POST['about']
        websiteURL = request.POST['websiteURL']

        edit = Admin_profile.objects.get(id=id) 
        edit.firstName = firstName
        edit.lastName = lastName
        edit.moblieNumber = moblieNumber
        edit.interests = interests
        edit.occupation = occupation
        edit.about = about
        edit.websiteURL = websiteURL
        edit.save()

        return JsonResponse({'instance': 'success'})


def image_upload(request):
    if request.method == 'POST':
        a = Admin_profile.objects.get(id=1)
        submitted_form = UploadImageForm(request.POST, request.FILES, instance=a)

        if submitted_form.is_valid():
            submitted_form.save()
            return JsonResponse({'instance': 'success'})
        else:
            return JsonResponse({'instance': 'error'})

def change_password(request):
    if request.method == 'POST':
        current_pwd = request.POST['current_pwd']
        rePwd = request.POST['rePwd']
        newPwd = request.POST['newPwd']

        user = User.objects.get(is_staff=1)
        
        if user.check_password(current_pwd):
            if rePwd == newPwd:
                edit = User.objects.get(is_staff=1) 
                edit.password = make_password(newPwd)
                edit.save()
                return JsonResponse({'instance': 'success'})
            else:
                return JsonResponse({'instance': 'error'})
        else:
            return JsonResponse({'instance': "Don't exist password !"})

def change_admin(request):
    if request.method == 'POST':
        Current_email = request.POST['Current_email']
        newEmail = request.POST['newEmail']
        adminName = request.POST['adminName']

        if User.objects.filter(email = Current_email).exists():
            edit = User.objects.get(is_staff = 1) 
            edit.email = newEmail
            edit.username = adminName
            edit.save()
            return JsonResponse({'instance': 'success'})
        else:
            return JsonResponse({'instance': "Don't exist email !"})
            
        


