from django import forms  
from .models import Setting
from django.core.validators import *

class SettingForm(forms.ModelForm):

	site_name = forms.CharField(required=True,
						error_messages={
						 	'required': 'Sitenme field is required',
						 	'max_length':'40'
						}
						# validators=[MaxLengthValidator(40)]
					)

	cur_text = forms.CharField(required=True,
						error_messages={
						 	'required': 'Curreny Text field is required'
						},
						validators=[MaxLengthValidator(40)]
					)

	cur_sym = forms.CharField(required=True,
						error_messages={
						 	'required': 'Curreny Symbold field is required'
						},
						validators=[MaxLengthValidator(40)]
					)
 
	base_color = forms.CharField(required=True,
						error_messages={
						 	'required': 'Base Color field is required'
						},
						validators=[MaxLengthValidator(40)]
					)

	class Meta:
	    model = Setting 
	    fields = [
	    			'site_name', 
	    			'cur_text',
	    			'cur_sym'
	    		]

	   