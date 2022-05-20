"""admin URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views 
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
import debug_toolbar
from django.contrib import admin
from django.urls import path, include
from .import views

from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', views.index, name='admin.home'),
    path('admin/general/setting', views.generalSetting, name='admin.general.setting'),
    path('admin/clear/cache', views.clearCache, name='admin.clear.cache'),
    path('admin/logo', views.logo, name='admin.logo'),
    path('admin/seo', views.seo, name='admin.seo'),
    path('admin/email/configure', views.emailConfigure, name='admin.email.configure'),
    path('admin/send/test/mail/', views.sendTestMail, name='admin.send.test.mail'),
    path('admin/email/setting/', views.mailSetting, name='admin.mail.setting'),
    path('admin/custom/asset', views.customAsset, name='admin.custom.asset'),
    path('admin/screen/record', views.screenRecord, name='admin.screen.record'),
    path('admin/', admin.site.urls),

    path('', include('frontend.urls')),
    path('user', include('user.urls')),

    path('__debug__/', include(debug_toolbar.urls)),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

# from django.contrib import admin
# admin.site.index_template = 'admin/my_custom_index.html'
# admin.autodiscover()


