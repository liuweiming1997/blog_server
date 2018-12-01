from server import app
from flask import make_response

@app.route('/register')
def register():
    resp = make_response('hello world')
    return resp

@app.route('/')
def index():
    resp = make_response('index page')
    return resp
