#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import json
from logger.logger import log

class db_config():
    USER = os.getenv('MYSQL_ROOT_USER', default = 'no_set_db_user')
    PASSWORD = os.getenv('MYSQL_ROOT_PASSWORD', default = 'no_set_db_password')
    DATABASE = os.getenv('MYSQL_DATABASE', default = 'no_select_database')
    HOST = os.getenv('DB_HOST', default = 'no_set_db_host')

class blog_server_config():
    SECRET_KEY = os.getenv('SECRET_KEY', default = 'no_secret')
    DB = db_config()

config = blog_server_config()

log.info(config.SECRET_KEY)
log.info(config.DB.USER)
log.info(config.DB.PASSWORD)
log.info(config.DB.DATABASE)
log.info(config.DB.HOST)
