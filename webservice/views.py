# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http import HttpResponse


def hello_world_view(request):
    return HttpResponse("hello world", content_type="text/plain")
