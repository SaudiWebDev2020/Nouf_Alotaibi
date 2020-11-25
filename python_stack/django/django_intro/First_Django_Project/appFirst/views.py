from django.shortcuts import HttpResponse, redirect
from django.http import JsonResponse

# Create your views here.
def root(request):
    return redirect('/blogs')

def index(request):
    return HttpResponse('"placeholder to later display a list of all blogs"')

def new(request):
    return HttpResponse ("placeholder to display a new form to create a new blog")

def create(request):
    return redirect('/blogs')

def show(request,number):
    return HttpResponse ("placeholder to display blog number: "+str(number))

def edit(request,number):
    return HttpResponse ("placeholder to edit blog number: "+str(number))

def destroy(request,number):
    return redirect('/appFirst/blogs')

def json(request):
    return JsonResponse ({
        "title": "My first blog", 
        "content": "lorem ,dcfg vhb njmkl , gygewyuuy "})


