#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import mysql.connector
from config import config

class db_base():
    def __init__(self):
        self.conn = mysql.connector.connect(user=config.DB.USER, \
                                            password=config.DB.PASSWORD, \
                                            database=config.DB.DATABASE, \
                                            host=config.DB.HOST)

    def execute(self, sql):
        print(sql)
        cursor = self.conn.cursor()
        try:
            result = cursor.execute(sql)
            self.conn.commit()
            cursor.close()
        except BaseException:
            raise BaseException
        return result
