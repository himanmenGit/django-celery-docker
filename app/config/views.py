from django.http import HttpResponse
from demoapp.tasks import add


def home(request):
    res = add.delay(2, 50)
    return HttpResponse(res.get())
