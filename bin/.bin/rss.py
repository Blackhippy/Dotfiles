#!/usr/bin/env python
import requests
import json
import sys

url = 'https://rss.hippi.xyz/api/'
session_payload = {"op": "login", "user": "admin", "password": "Howard04!"}
header = {"content-type": "application/json"}
try:
    r = requests.post(url, data=json.dumps(session_payload), headers=header)
except:
    print('Could not connect to: ', url)
    sys.exit(0)

if r.status_code == 200:
    session_id = r.json()['content']['session_id']
    if session_id:
        login_payload = {"sid": session_id, "op": "getUnread"}
        article = {
            "sid": session_id,
            "op": "getHeadlines",
            "feed_id": "-3",
            "is_cat": "0",
            "limit": "1"
        }
        r = requests.post(url, data=json.dumps(login_payload))
        a = requests.post(url, data=json.dumps(article), headers=header)
        r_json = a.json()
        #print(r_json)
        lst = list()
        for item in r_json['content']:
            headline = item['title']
            #print(headline))
        if r.status_code == 200:
            unread = r.json()['content']['unread']
            r_json = a.json()
            lst = list()
            for item in r_json['content']:
                headline = item['title']
                #print(headline)
            print("UNREAD ARTICLES" + " " + unread + " " + "LATEST HEADLINE" +
                  ":" + " " + headline)
