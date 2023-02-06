from email import header
from urllib import response
import requests
import time
import json
import urllib.parse
import config 


def getService(serviceId):
    serviceId = urllib.parse.quote(serviceId, safe='')
    response = requests.get(f'https://localhost:8080/services/{serviceId}')
    return json.loads(response.content)


def searchServices():
    response = requests.get(f'https://localhost:8080/services/')
    return json.loads(response.content)["items"]


def sendMessage(serviceId, body):
    data = body
    serviceId = urllib.parse.quote(serviceId, safe='')
    response = requests.post(f'https://localhost:8080/execute-service-action/{serviceId}', data=data)
    return (response) 
