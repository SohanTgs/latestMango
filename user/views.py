from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
# Create your views here.



from django.contrib.auth import authenticate



def userLogin(request):
	# contents = {
	# 	'pageTitle': ''
	# }

	if(request.method == 'POST'):

		return HttpResponse(200)

	else:

		return render(request, 'user/login.html')





# https://docs.djangoproject.com/en/3.2/topics/auth/customizing/
# https://www.agiliq.com/blog/2019/11/django-custom-authentication-backend/


# asgiref==3.3.1
# certifi==2021.5.30
# chardet==4.0.0
# Django==3.1.5
# django-auto-logout==0.5.0
# django-debug-toolbar==3.2.1
# django-easy-validator==1.4.0
# django-laravel-validator==1.0.0
# idna==2.10
# mysqlclient==2.0.3
# Pillow==8.1.0
# pytz==2020.5
# requests==2.25.1
# sqlparse==0.4.1
# urllib3==1.26.6
