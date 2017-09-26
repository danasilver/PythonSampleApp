import requests

def ip():
    return requests.get("https://httpbin.org/ip").json()