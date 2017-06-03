# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.test import TestCase, Client

class HelloTest(TestCase):

    def test_hello_world(self):
        c = Client()
        response = c.get('/hello')
        self.assertEquals("hello world", response.content)
