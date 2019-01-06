from server import app

from flask import make_response
from flask import session, g
from decorator.parse_user import parse_user

@app.route('/register')
@parse_user()
def register():
    resp = make_response('hello world' + g.user)
    return resp

@app.route('/')
def index():
    session['user_id'] = 2
    resp = make_response('index page')
    return resp
