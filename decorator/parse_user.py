#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from flask import g, session
import functools

"""
    load user from cookies
"""
def parse_user():
    def wrapper(func):
        @functools.wraps(func)
        def wrapper_func(*args, **kwargs):
            user_id = session.get('user_id')
            if user_id:
                g.user = 'Testing string'
            else:
                raise Exception('Require login')
            return func(*args, **kwargs)
        return wrapper_func
    return wrapper
