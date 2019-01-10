from flask import Flask
from config import config

app = Flask(__name__)

def set_up_logging():
    pass

def set_up():
    app.config['SECRET_KEY'] = config.SECRET_KEY
    app.config['JSON_AS_ASCII'] = False
    app.config['JSON_SORT_KEYS'] = False

set_up()
