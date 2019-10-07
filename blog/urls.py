#!/usr/bin/env python
# -*- coding: UTF-8 -*-
# @Time    : 2019/10/5 13:34
# @Author  : su
# @File    : urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('index/', views.index),
    path('detail/<int:article_id>/', views.detail_page, name='article_id')
]