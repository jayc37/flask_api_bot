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
    """
    Đây là hàm xử lý chính của chương trình bao gồm các đoạn mã xử lý câu hỏi của người dùng.
    Từ đó lấy ra biến được gán trong file prologTT2016.pl.pl
    """
    def __init__(self,message):
        self.X = self.getfile(message)
        self.get_ready4query()
        self.headar = ''
    def getfile(self,message):
        try:
            file = 'prologTT2016.pl'
            t = Prolog()
            t.consult(file)        
            X = [ans['X'] for ans in t.query('query(X,[{}],[])'.format(message))]
            return X
        except Exception as e:
            x = 'file <prolog_processor.py> function <check_sw>:' + str(e)
            logging.error('file <prolog_processor.py> function <check_sw>:' + str(e))
            message = 'hệ thống chưa nhận diện được câu hỏi'
            self.logging_error(x)
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
            err = 'file <prolog_processor.py> function <get_ready4query>:' + str(e)
            logging.error('file <prolog_processor.py> function <get_ready4query>:' + str(e))
            self.logging_error(err)


    def get_dict(self,string):
        try:
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
                        self.headar = arg[0]
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
        except Exception as e:
            err = 'file <prolog_processor.py> function <get_dict>:' + str(e)
            logging.error('file <prolog_processor.py> function <get_dict>:' + str(e))
            self.logging_error(err)

    def call_dataserver(self,args):
        try:
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
        except Exception as e:
            logging.error('file <prolog_processor.py> function <call_dataserver>:' + str(e))
            err = 'file <prolog_processor.py> function <call_dataserver>:' + str(e)
            self.logging_error(err)

          
    def patients(self,args):
        try:
            a = args['elements']
            args_data = [a['gioitinh'],a['tuoi'],a['benhviens'],a['cities'],a['tinhtrang'],a['thoigian'],a['idbenhnhan']]
            return args_data
        except Exception as e:
            err = 'file <prolog_processor.py> function <patients>:' + str(e)
            logging.error('file <prolog_processor.py> function <patients>:' + str(e))
            self.logging_error(err)

    def getdata(self,args_data):
        try:
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
        except Exception as e:
            err = 'file <prolog_processor.py> function <getdata>:' + str(e)
            logging.error('file <prolog_processor.py> function <getdata>:' + str(e))
            self.logging_error(err)



    def getstring(self,string,header):
        try:
            string = '\n'.join(str(x) for x in string)
            stringg = string.replace('(','')
            stringg = stringg.replace(')','')
            stringg = stringg.replace("'","")
            stringg = header+stringg
            return stringg
        except Exception as e:
            err = 'file <prolog_processor.py> function <getstring>:' + str(e)
            logging.error('file <prolog_processor.py> function <getstring>:' + str(e))
            self.logging_error(err)

    def writeonfile(self,stringg):
        try:
            with open('tempProlog', 'w', encoding="utf-8") as f:
                f.write(stringg)
                print('finished wirte to tempProlog')
        except Exception as e:
            err = 'file <prolog_processor.py> function <writeonfile>:' + str(e)
            logging.error('file <prolog_processor.py> function <writeonfile>:' + str(e))  
            self.logging_error(err)


    def call_dataserverthongke(self,args):
        try:
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
            if self.headar == 'thongkevn':
                header = 'City,Cases,+Case,Deaths,Treating,Recover\n'
            stringgs = self.getstring(message,header)
            self.writeonfile(stringgs)
        except Exception as e:
            x = 'file <prolog_processor.py> function <call_dataserverthongke>:' + str(e)
            logging.error('file <prolog_processor.py> function <call_dataserverthongke>:' + str(e)) 
            self.logging_error(x)
            
    def clean_message(self,message):
        try:
            new_message = []
            for i in range(len(message[0])):
                x = message[0][i].replace(',','.')
                new_message.append(x)
            message.clear()
            message.append(tuple(new_message))
            return message
        except Exception as e:
            err = 'file <prolog_processor.py> function <clean_message>:' + str(e)
            logging.error('file <prolog_processor.py> function <clean_message>:' + str(e))
            self.logging_error(err)
    def logging_error(self,e):
            with open('logerror', 'w', encoding="utf-8") as f:
                f.write(e)
                print('finished wirte to logerror')



check_sw(str(sys.argv[1]))
# a = 'danh,sach,benh,nhan,nam,da,xuat,vien'
# a = 'ha,noi,co,bao,nhieu,ca'
# # # # a = 'hello'
# check_sw(a)