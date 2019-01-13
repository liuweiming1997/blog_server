#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from .base import db_base

class User(db_base):
    def __init__():
        super()

    @classmethod
    def load_or_create(cls, mail, password):
        db_base().execute(mail)
        return "testing"

    @classmethod
    def user_exist(cls, mail):
        pass
