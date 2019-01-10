#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from flask import g, session, make_response, request
import functools

"""
    load user from cookies
"""
def parse_user():
    def decorator(func):
        @functools.wraps(func)
        def wrapper_func(*args, **kwargs):
            user_id = session.get('user_id')
            if user_id:
                g.user = 'Testing string'
            else:
                raise Exception('Require login')
            return func(*args, **kwargs)
        return wrapper_func
    return decorator

"""
    set Access-Control-Allow
"""
def parse_access(allow_origin = "*", allow_methods = "PUT,GET,POST,DELETE,OPTIONS", allow_headers = "Referer,Accept,Origin,User-Agent"):
    def decorator(func):
        @functools.wraps(func)
        def wrapper_func(*args, **kwargs):
            resp = make_response(func(*args, **kwargs))
            resp.headers['Access-Control-Allow-Origin'] = request.headers.get('Origin')
            resp.headers['Access-Control-Allow-Methods'] = allow_methods
            resp.headers['Access-Control-Allow-Headers'] = allow_headers
            resp.headers['Access-Control-Allow-Credentials'] = "true" # allow send cookies
            return resp
        return wrapper_func
    return decorator
