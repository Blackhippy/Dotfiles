#!/usr/bin/env python
from colorama import Fore
from colorama import Style

import requests
import json
import sys

api_url = 'https://covidtracking.com/api/v1/states/current.json'

r = requests.get(api_url)
r_data = r.json()
#print(r_data)
if r.status_code == 200:
    for state in r_data:
        if state['state'] == 'TX':
            positive = state['positive']
            negative = state['negative']
            recovered = state['recovered']
            death = state['death']
            print("TX:", " ", "SICK", positive, "LIFE", recovered, "DEAD",
                  death)
else:
    print("Covid tracking api down")
