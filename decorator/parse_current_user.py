#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from flask import g, session
import functools

"""
    load user from cookies
"""
def parse_current_user(require):
    def wrapper(func):
        @functools.wraps(func)
        def wrapper_func(*args, **kwargs):
