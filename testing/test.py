#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import zlib
from base64 import b64decode
from flask.sessions import session_json_serializer
from itsdangerous import base64_decode

def parse_cookies(payload):
    payload, sig, timestamp = payload.split('.')

    try:
        payload = base64_decode(payload)
        sig = base64_decode(sig)
        timestamp = base64_decode(timestamp)
    except Exception as e:
        raise Exception('Could not base64 decode the payload because of an exception {}'.format(str(e)))

    return [session_json_serializer.loads(payload), timestamp, sig]

if __name__ == '__main__':
    print(parse_cookies('eyJ1c2VyX2lkIjoyfQ.XDF4ww.lcFvq9EvJEZjM7MAdMlqh5fKOgg'))
    