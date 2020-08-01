#!/usr/bin/python
import requests
from requests import get
import socket

exip = get('https://api.ipify.org').text
print(exip)
