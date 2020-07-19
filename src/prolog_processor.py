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

class check_sw():
    def __init__(self,message):
        self.X = self.getfile(message)
        self.get_ready4query()
    def getfile(self,message):
        try:
            file = 'prologTT2016.pl'
            t = Prolog()
            t.consult(file)        
            X = [ans['X'] for ans in t.query('query(X,[{}],[])'.format(message))]
            return X
        except Exception as e:
            logging.error('<check_sw>' + str(e))
            message = 'hệ thống chưa nhận diện được câu hỏi'
        return message

    def get_ready4query(self):
        try:
            if bool(self.X) is True:
                string = self.X
                args = self.get_dict(string)
                if args['root'] == 'patients':
                    self.call_dataserver(args)
                else:
                    self.call_dataserverthongke(args)
            else:
                message = 'Không hiểu.'
                self.writeonfile(message)
        except Exception as e:
            logging.error('<check_sw>' + str(e))


    def get_dict(self,string):
        for i in string:
            values = i.replace(')','')
            value = values.split(',')
            args = {}
            ar = {}
            for ii in range(len(value)):
                arg = value[ii].replace(' ','')
                arg = arg.split('(')
                if ii == 0:
                    args['root'] = arg[0]
                    ar[str(arg[1])] = arg[2]
                else:
                    ar[str(arg[0])] = arg[1]
            args['elements'] = ar
        if 'thoigian' in args['elements']:
            args['elements']['thoigian'] = '%'+args['elements']['thoigian']
        if 'tinhtrang' in args['elements']:
            if args['elements']['tinhtrang'] == 'daxuatvien':
                args['elements']['tinhtrang'] = 'Đã xuất viện'
            if args['elements']['tinhtrang'] == 'dangdieutri':
                args['elements']['tinhtrang'] = 'Đang điều trị'

        return args
    def call_dataserver(self,args):
        check_args = ['gioitinh','tuoi','benhviens','cities','tinhtrang','thoigian','idbenhnhan']
        for i in range(len(check_args)):
            if len(args['elements']) != len(check_args)+1:
                for ii in range(len(args['elements'])):
                    if check_args[i] not in args['elements']:
                        args['elements'][check_args[i]] = '%%'
            else:
                pass
        if args['root'] == 'patients':
            resp = self.getdata(args)
            header = 'BỆNH NHÂN, TÌNH TRẠNG, TUỔI,GIỚI TÍNH,BV ĐIỀU TRỊ, NƠI PHÁT HIỆN\n'
            string = self.getstring(resp,header)
            self.writeonfile(string)
        else:
            response = 'OK'
    def patients(self,args):
        a = args['elements']
        args_data = [a['gioitinh'],a['tuoi'],a['benhviens'],a['cities'],a['tinhtrang'],a['thoigian'],a['idbenhnhan']]
        return args_data

    def getdata(self,args_data):
        try:
            conn = mysql.connector.connect(host="labando.com",
        port=3306,
        user="twoman",
        password="@Twoman123456",
        database = "covidinfomation")
            cur = conn.cursor()
            if args_data['root'] == 'thongkevn':
                value = [args_data['elements']['cities']]
                cur.callproc('proc_getdltkvn',value)
            elif args_data['root'] == 'thongketg':
                value = [args_data['elements']['quocgia']]
                cur.callproc('proc_getdltktg',value)
            else:
                args_data = self.patients(args_data)
                cur.callproc('proc_getbenhnhan',args_data)
            for result in cur.stored_results():
                message = result.fetchall()
                logging.error('message type')
                logging.error(type(message))
                logging.error(message)
        except mysql.connector.Error as error:
                        print("Failed to execute stored procedure: {}".format(error))
        return message
    def getstring(self,string,header):
        string = '\n'.join(str(x) for x in string)
        stringg = string.replace('(','')
        stringg = stringg.replace(')','')
        stringg = stringg.replace("'","")
        stringg = header+stringg
        return stringg
    def writeonfile(self,stringg):
        with open('tempProlog', 'w', encoding="utf-8") as f:
            f.write(stringg)
            print('finished wirte to tempProlog')
    def call_dataserverthongke(self,args):
        if args['root'] == 'thongkevn':
            a = args['elements']['cities']
            args['elements']['cities'] = '%'+a+'%'
        else:
            a = args['elements']['quocgia']
            args['elements']['quocgia'] = '%'+a+'%'
        message = self.getdata(args)
        logging.error('prolog_processor')
        logging.error(message)
        message = self.clean_message(message)
        header = 'Name,Cases,Death,Recover,Treating,Dangerous\n'
        stringgs = self.getstring(message,header)
        self.writeonfile(stringgs)
    
    def clean_message(self,message):
        print(message)
        new_message = []  
        for i in range(len(message[0])):
          x = message[0][i].replace(',','.')
          new_message.append(x)
        message.clear()
        message.append(tuple(new_message))
        print(message)
        return message

check_sw(str(sys.argv[1]))
# a = 'danh,sach,benh,nhan,nam,da,xuat,vien'
# a = 'the,gioi,co,bao,nhieu,ca'
# # # a = 'hello'
# check_sw(a)