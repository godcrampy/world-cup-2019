import datetime
import time
import requests
from bs4 import BeautifulSoup

import firebase_admin
from firebase_admin import credentials, firestore
import json

#====================================#
match_number = 0
refresh_time = 10
url = 'http://www.espncricinfo.com/scores'
cred = credentials.Certificate(
    '/home/godcrampy/Code/Final/world_cup/serve/private-key.json')
default_app = firebase_admin.initialize_app(cred)
db = firestore.client()
doc_ref = db.collection(u'score').document(u'1e2YU1nZgFsM2eMiw9ip')
#====================================#


def xstr(s):
    return '' if s is None else str(s)


iteration = 1
while True:
    meta = 'iteration: ' + str(iteration) + '\n' + \
        'time: ' + str(datetime.datetime.now())

    print("Executing...")
    print(meta)
    print('Refresh time: ' + str(refresh_time) + " seconds")
    iteration += 1

    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')

    match = soup.find_all('ul', class_='cscore_competitors')[match_number]
    team_1 = match.find_all('li', class_='cscore_item')[0]
    team_2 = match.find_all('li', class_='cscore_item')[1]

    team_1_name = xstr(team_1.find_all(
        'span', class_='cscore_name--long')[0].string)
    team_2_name = xstr(team_2.find_all(
        'span', class_='cscore_name--long')[0].string)

    if len(team_1.find_all('div', class_='cscore_score')[0].contents):
        team_1_score = xstr(team_1.find_all(
            'div', class_='cscore_score')[0].contents[0])
    else:
        team_1_score = ""

    if len(team_2.find_all('div', class_='cscore_score')[0].contents):
        team_2_score = xstr(team_2.find_all(
            'div', class_='cscore_score')[0].contents[0])
    else:
        team_2_score = ""
# Addendum
    # if len(team_1.find_all('span', class_='cscore_overs')[0].contents):
    #     team_1_overs = xstr(team_1.find_all(
    #         'span', class_='cscore_overs')[0].contents)
    # else:
    #     team_1_overs = ""

    # if len(team_2.find_all('span', class_='cscore_overs')[0].contents):
    #     team_2_overs = xstr(team_2.find_all(
    #         'span', class_='cscore_overs')[0].contents[0])
    # else:
    #     team_2_overs = ""
# Addendum End
    if len(soup.find_all('div', class_='cscore')[match_number].find_all('span', class_='cscore_time')):
        match_state = soup.find_all('div', class_='cscore')[match_number].find_all(
            'span', class_='cscore_time')[0].string
    else:
        match_state = soup.find_all('div', class_='cscore')[match_number].find_all(
            'span', class_='cscore_date')[0].string

    final_score = match_state + '\\n' + team_1_name + " " + team_1_score + \
        '\\n' + team_2_name + " " + team_2_score

    doc_ref.set({
        u'content': final_score
    })

    print('Document Rewritten:')
    print(final_score.replace('\\n', '\n'))
    print('=======================\n')
    time.sleep(refresh_time)
