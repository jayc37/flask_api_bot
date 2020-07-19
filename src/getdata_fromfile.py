import re
import sys
from signal import SIGINT
import subprocess
from subprocess import Popen
import logging
from pyswip import Prolog
import os

def check_sw(message):
    os.system('python src/prolog_processor.py ' + message)

def get_response():
    f = open('tempProlog', 'r', encoding="utf-8")
    response = f.readlines()
    return response
# def get_response_dltk():
#     f = open('dltkprolog', 'r', encoding="utf-8")
#     response = f.readline()
#     return response
