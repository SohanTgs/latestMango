from django.db import models
import json

# from django.contrib.postgres.fields import JSONField

# Create your models here.

class Setting(models.Model):
	email_from = models.CharField(max_length=40, blank=False)
	email_template = models.TextField(blank=False)

	mail_config = models.CharField(max_length=255, blank=True)

	site_name = models.CharField(max_length=40, blank=False)
	cur_text = models.CharField(max_length=40, blank=False)
	cur_sym = models.CharField(max_length=40, blank=False)
	base_color = models.CharField(max_length=40, blank=False)
 
	g_translate = models.BooleanField(default=0)
	agree_policy = models.BooleanField(default=0)
	registration = models.BooleanField(default=0)
	force_ssl = models.BooleanField(default=0)

	logo = models.ImageField(upload_to='logo_icon/', null=True, blank=True) 
	favicon = models.ImageField(upload_to='logo_icon/', null=True, blank=True) 

	updated_at = models.DateTimeField(auto_now=True, auto_now_add=False)
	created_at = models.DateTimeField(auto_now=False, auto_now_add=True)
    
	def json(self):
		return json.loads(self.mail_config)
		
	# def __str__ (self):
	# 	return self.category_name


class Seo(models.Model):
	keyword = models.TextField(null=True, blank=True)
	description = models.TextField(null=True, blank=True)

	image = models.ImageField(upload_to='seo/', null=True, blank=True)  

	updated_at = models.DateTimeField(auto_now=True, auto_now_add=False)
	created_at = models.DateTimeField(auto_now=False, auto_now_add=True)

	def json(self):
		return json.loads(self.keyword)

