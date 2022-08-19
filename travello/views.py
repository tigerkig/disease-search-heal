from django.shortcuts import render
from django.http import JsonResponse
from .models import Lists
from .models import Symptomps_List
from .models import Explanation_treatment
from .models import Disease_explanation
# from django.core import serializers
import json

# Create your views here.
def index(request):
    lists = Lists.objects.all()
    title = Disease_explanation.objects.all()
    return render(request, 'index.html',{'lists':lists, 'titles':title})

def about(request):
    return render(request, 'about.html')

def contact(request):
    return render(request, 'contact.html')

def diagnosis(request):
    return render(request, 'diagnosis.html')

def search_data(request):
    if request.method == 'POST':
        json_data = request.POST['data']
        before_object = "".join(json_data)
        dataValues = json.loads(before_object)
        count = 0
        array = []

        while count < len(dataValues) :

            course_id_1 = Symptomps_List.objects.filter(list_1 = dataValues[count]).values('symptomps')
            course_id_2 = Symptomps_List.objects.filter(list_2 = dataValues[count]).values('symptomps')
            course_id_3 = Symptomps_List.objects.filter(list_3 = dataValues[count]).values('symptomps')
            course_id_4 = Symptomps_List.objects.filter(list_4 = dataValues[count]).values('symptomps')
            course_id_5 = Symptomps_List.objects.filter(list_5 = dataValues[count]).values('symptomps')
            ids_1 = map(str, course_id_1)
            ids_2 = map(str, course_id_2)
            ids_3 = map(str, course_id_3)
            ids_4 = map(str, course_id_4)
            ids_5 = map(str, course_id_5)
            _ids_1 = ','.join(ids_1)
            _ids_2 = ','.join(ids_2)
            _ids_3 = ','.join(ids_3)
            _ids_4 = ','.join(ids_4)
            _ids_5 = ','.join(ids_5)
            array.insert(count,_ids_1)
            array.insert(count,_ids_2)
            array.insert(count,_ids_3)
            array.insert(count,_ids_4)
            array.insert(count,_ids_5)
            count += 1

        return JsonResponse({'instance': array})

def explanation(request):
    if request.method == 'POST':
        explanation = request.POST['data']
        result = Explanation_treatment.objects.filter(title = explanation).values('explanation')
        exp = map(str, result)
        send_exp = ''.join(exp)
        return JsonResponse({'instance': send_exp, 'name': explanation})

def treatment(request):
    if request.method == 'POST':
        treatment = request.POST['data']
        result = Explanation_treatment.objects.filter(title = treatment).values('treatment')
        treat = map(str, result)
        send_treat = ''.join(treat)
        return JsonResponse({'instance': send_treat})
