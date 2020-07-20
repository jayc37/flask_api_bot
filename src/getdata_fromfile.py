import re
import sys
from signal import SIGINT
import subprocess
from subprocess import Popen
import logging
from pyswip import Prolog
import os

def check_sw(message):
    """Hàm này giúp process tiến hành đọc file xử lý prolog"""
    try:
        os.system('python3 src/prolog_processor.py ' + message)
    except Exception as e:
        logging.error('<file <getdata_fromfile.py> function <check_sw>>:' + str(e))
        logging.error('sau python3 src/prolog_processor.py cần "1 khoảng trắng"')
def get_response():
    try:
        f = open('tempProlog', 'r', encoding="utf-8")
        response = f.readlines()
        return response
    except Exception as e:
        logging.error('<file <getdata_fromfile.py> function <get_response>>:' + str(e))
        logging.error('Kiểm tra dữ liệu trong file tempProlog có được ghi hay không')
# def get_response_dltk():
#     f = open('dltkprolog', 'r', encoding="utf-8")
#     response = f.readline()
#     return response
