from flask import Flask
from config import config

app = Flask(__name__)

def set_up_logging():
    pass

def set_up():
    app.config['SECRET_KEY'] = config.SECRET_KEY

set_up()
