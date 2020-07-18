from flask import Flask
from flask import render_template, request
from flask_restful import Api
from flask_cors import CORS
import pyswip
from pyswip import Prolog
import json
import os.path
import logging
from src.handledata import handle_response_code
from src.thesis import GetData
from src.witeonfile import chartbig1
# ------------------------------------------------------------------------------
app = Flask(__name__)
# for develop
app.debug = True
api = Api(app)
CORS(app)
# for develop
logging.basicConfig(level = logging.INFO)

# thesis
api.add_resource(GetData, '/getData') # get

@app.route("/")
def home():
    return render_template("index.html")
@app.route("/getdata")
def get_bot_response():
    userText = str(request.args.get('data'))
    message_chatbot = handle_response_code(userText)
    logging.error(type(message_chatbot))
    return message_chatbot
if __name__ == "__main__":
  app.run(port=8000)
