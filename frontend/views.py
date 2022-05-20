from django.shortcuts import render, redirect
from django.http import HttpResponse

from django.core.paginator import Paginator
from django.shortcuts import get_object_or_404

from django.contrib import messages
from django.http import JsonResponse

import requests

# Create your views here.

def home(request):

	contents = {
		'pageTitle': 'Home'
	}

	return render(request, 'frontend/index.html', contents)