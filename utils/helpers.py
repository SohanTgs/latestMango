import os
import uuid
from django.shortcuts import redirect
from django.utils.deconstruct import deconstructible

def Back(request):
    return redirect(request.META.get('HTTP_REFERER'))
    
@deconstructible
class Logo(object): 
    def __init__(self, path):
        self.path = os.path.join(path, "%s%s")

    def __call__(self, _, filename):
        # @note It's up to the validators to check if it's the correct file type in name or if one even exist.
        extension = os.path.splitext(filename)[1]
        return self.path % ('logo', extension)

@deconstructible
class Favicon(object):
    def __init__(self, path):
        self.path = os.path.join(path, "%s%s")

    def __call__(self, _, filename):
        # @note It's up to the validators to check if it's the correct file type in name or if one even exist.
        extension = os.path.splitext(filename)[1]
        return self.path % ('favicon', extension)