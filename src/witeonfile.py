# -*- coding: utf-8 -*-
import mysql.connector
import re
import sys
from signal import SIGINT
import subprocess
from subprocess import Popen
import logging
from pyswip import Prolog
import os
import sys

class chartbig1():
    def __init__(self):
        self.data = []
        self.datavietnam = []
        self.getdata()
        self.getdata_vietnam()
        self.format_data()
    def getdata(self):
        try:
            conn = mysql.connector.connect(host='localhost',port = '3308',
                         user="root", passwd="", database="covidinfomation")
            cur = conn.cursor()
            cur.callproc('proce_gettotalchar12country',[])
            for result in cur.stored_results():
                message = result.fetchall()
        except mysql.connector.Error as error:
                        print("Failed to execute stored procedure: {}".format(error))
        self.data = message
    def getdata_vietnam(self):
        try:
            conn = mysql.connector.connect(host='localhost',port = '3308',
                         user="root", passwd="", database="covidinfomation")
            cur = conn.cursor()
            cur.callproc('proc_vietnammuonnam',[])
            for result in cur.stored_results():
                datavietnam = result.fetchall()
        except mysql.connector.Error as error:
                        print("Failed to execute stored procedure: {}".format(error))
        self.datavietnam = datavietnam
    def format_data(self):
        datax = []
        data = self.data
        datavietam = self.datavietnam
        for i in range(len(data)):
            datay = {}
            for j in range(len(datavietam)):
               if j == i:
                    datay['CITIES'] = datavietam[j][2]
                    datay['CASESVN'] = int(datavietam[j][1])
                    datay['RECOVERVN'] = int(datavietam[j][0])
            case = data[i][1].replace(',','')
            death = data[i][2].replace(',','')
            death = death.replace('N/A','0')
            recover = data[i][3].replace(',','')
            recover = recover.replace('N/A','0')
            datay['REGION'] = data[i][0]
            datay['VALUE'] = int(case)
            datay['VALUED'] = int(death)
            datay['VALUER'] = int(recover)
            datax.append(datay)
        return datax
# a = 'c,toi,du,lieu,thong,ke,so,nguoi,nhiem,benh,o,ha,noi'
# a = 'cho,toi,du,lieu,benh,nhan,20,tuoi'
# # # # a = 'hello'
# chartbig1()