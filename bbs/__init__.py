from flask import Flask

app = Flask(__name__)

@app.route("/", methods=["GET"])
def index():
    return "<h1>掲示板</h1>"
