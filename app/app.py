from flask import Flask, request
import os

app = Flask(__name__, static_folder='../static')


@app.route('/')
def index():
    return 'Hello World!'


if __name__ == '__main__':
    app.run(host=os.environ['IP'], debug=False)
