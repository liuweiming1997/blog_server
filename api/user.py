from server import app

from flask import session, g, jsonify, make_response, request
from decorator.decorator_tools import parse_user, parse_access

@app.route('/register')
@parse_user()
@parse_access()
def register():
    resp = make_response('hello world')
    return resp

@app.route('/')
@parse_access()
def index():
    session['user_id'] = 2
    return jsonify({"success":1})
