from general.models import Setting, Seo

def index(request):
   return {
        'general': Setting.objects.first(),
        'seo': Seo.objects.first(),
        'url': request.resolver_match.url_name
    }

def system(request):
   return {
        'systemN': 'Mango',
        'systemV': 1
    }


 