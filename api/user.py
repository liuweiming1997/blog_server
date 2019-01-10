from server import app

from flask import session, g, jsonify, make_response
from decorator.decorator_tools import parse_user, pares_access

@app.route('/register')
@pares_access()
def register():
    resp = make_response('hello world')
    return resp

@app.route('/')
@pares_access()
def index():
    session['user_id'] = 2
    return jsonify({"success":1})
