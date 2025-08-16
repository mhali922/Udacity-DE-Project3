# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello All Welcome to my Udacity Project 3 - Coworking Space Service'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
