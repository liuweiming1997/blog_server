#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os

class blog_server_config():
    SECRET_KEY = os.getenv('SECRET_KEY', default = 'no_secret')

config = blog_server_config()
