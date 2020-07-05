# -*- coding: utf-8 -*-
from bs4 import BeautifulSoup
import requests
import os
import codecs
import mysql.connector
from mysql.connector import Error
from pyvi import ViUtils
import re
from datetime import date

class crawler:
    def __init__(self):
        self.conn = mysql.connector.connect(
        host="127.0.0.1",
        port=3308,
        user="root",
        password="",
        database = "covidinfomation")
        self.cur = self.conn.cursor()
        # self.vietnamstatistic()
        # self.vietnam_patients()
        # self.thegioistatistic()
        self.get()
    def get_header(self,values):
        self.value = values
        self.header = {
            'User-Agent': 'Mozilla/5.0'
        } 
        self.page = requests.get(self.value, headers=self.header)
        soup = BeautifulSoup(self.page.content)
        return soup

    def vietnamstatistic(self):
        wiki = "https://vi.wikipedia.org/wiki/Đại_dịch_COVID-19_tại_Việt_Nam"
        soup = self.get_header(wiki)
        # header = {
        #     'User-Agent': 'Mozilla/5.0'
        # } 
        # page = requests.get(wiki, headers=header)
        # soup = BeautifulSoup(page.content)
        tables = soup.findAll("table", {"class": "wikitable"})
        for tn, table in enumerate(tables):
            if tn == 0:
                rows = table.findAll("tr")
                row_lengths = [len(r.findAll(['th', 'td'])) for r in rows]
                ncols = max(row_lengths)
                nrows = len(rows)
                data = []
                for i in range(nrows):
                    rowD = []
                    for j in range(ncols):
                        rowD.append('')
                    data.append(rowD)

                for i in range(len(rows)):
                    row = rows[i]
                    rowD = []
                    cells = row.findAll(["td", "th"])
                    for j in range(len(cells)):
                        cell = cells[j]

                        #lots of cells span cols and rows so lets deal with that
                        cspan = int(cell.get('colspan', 1))
                        rspan = int(cell.get('rowspan', 1))
                        l  = 0
                        for k in range(rspan):
                            # Shifts to the first empty cell of this row
                            while data[i + k][j + l]:
                                l += 1
                            for m in range(cspan):
                                cell_n = j + l + m
                                row_n = i + k
                                # in some cases the colspan can overflow the table, in those cases just get the last item
                                cell_n = min(cell_n, len(data[row_n])-1)
                                data[row_n][cell_n] += cell.text


                    data.append(rowD)
                dab2 = []
            for i in range(2,len(data)):
                dab = []
                for x in data[i]:
                    if "Tính đến ngày" not in x and x != '' :
                        x = x.replace('\n','')
                        x = x.replace('.','')
                        dab.append(x)
                dab2.append(dab)


            for i in range(0,len(dab2)):
                vi = dab2[i]
                if i < 31:
                    matp = self.get_id(vi[0],i)
                    ngaycn = date.today()
                    try:
                       
                        self.cur.callproc('proc_delete_dulieuthongkethegioi', '')
                        args = (str(matp),str(vi[0]),'vietnam1','Việt Nam','dltkvn',str(ngaycn),str(vi[1]),str(vi[4]),str(vi[3]),str(vi[2]),'0','0','0','0')
                        self.cur.callproc('proc_insert_dulieuthongkevietnam', args)
                        #  proc_insert_dulieuthongkevietnam('matp', 'tentinhthanhpho', 'maquocgia', 'tenquocgia','madltk','2012-12-12',
                        # 'tongcases','tongdeath','tonghoiphuc','dangdieutri','dangnguykich','nhiemmoi','chetmoi','hoiphucmoi') 
                    except mysql.connector.Error as error:
                        print("Failed to execute stored procedure: {}".format(error))
                    finally:
                        if (self.conn.is_connected()):
                            # self.cur.close()
                            # self.conn.close()
                            print("MySQL connection is closed")
    def thegioistatistic(self):
        wiki = "https://www.worldometers.info/coronavirus/#countries"
        soup = self.get_header(wiki)
        # header = {
        #     'User-Agent': 'Mozilla/5.0'
        # }  # Needed to prevent 403 error on Wikipedia
        # page = requests.get(wiki, headers=header)
        # soup = BeautifulSoup(page.content)

        tables = soup.findAll("table", {"class": "main_table_countries"})
        for tn, table in enumerate(tables):
            if tn == 0:
                rows = table.findAll("tr")
                row_lengths = [len(r.findAll(['th', 'td'])) for r in rows]
                ncols = max(row_lengths)
                nrows = len(rows)
                data = []
                for i in range(nrows):
                    rowD = []
                    for j in range(ncols):
                        rowD.append('')
                    data.append(rowD)

                for i in range(len(rows)):
                    row = rows[i]
                    rowD = []
                    cells = row.findAll(["td", "th"])
                    for j in range(len(cells)):
                        cell = cells[j]

                        #lots of cells span cols and rows so lets deal with that
                        cspan = int(cell.get('colspan', 1))
                        rspan = int(cell.get('rowspan', 1))
                        l  = 0
                        for k in range(rspan):
                            # Shifts to the first empty cell of this row
                            while data[i + k][j + l]:
                                l += 1
                            for m in range(cspan):
                                cell_n = j + l + m
                                row_n = i + k
                                # in some cases the colspan can overflow the table, in those cases just get the last item
                                cell_n = min(cell_n, len(data[row_n])-1)
                                data[row_n][cell_n] += cell.text
                    data.append(rowD)
                dab2 = []
            for i in range(8,len(data)):
                dab = []
                for x in data[i]:
                    x = x.replace('\n','')
                    x = x.replace('.','')
                    dab.append(x)
                dab2.append(dab[1:])


            for i in range(0,len(dab2)):
                if i < 216:
                    vi = dab2[i]
                    maqg = self.get_id(vi[0],i)
                    madltktg = self.get_id(vi[0],'dltk')
                    ngaycn = date.today()
                    
                    try:
                        args = ('','',str(maqg),str(vi[0]),str(madltktg),str(ngaycn),str(vi[1]),str(vi[3]),str(vi[5]),str(vi[6]),str(vi[7]),str(vi[2]),str(vi[4]),'0')
                        self.cur.callproc('proc_insert_dulieuthongkethegioi', args)
                        #  proc_insert_dulieuthongkevietnam('matp', 'tentinhthanhpho', 'maquocgia', 'tenquocgia','madltk','2012-12-12',
                        # 'tongcases','tongdeath','tonghoiphuc','dangdieutri','dangnguykich','nhiemmoi','chetmoi','hoiphucmoi') 
                    except mysql.connector.Error as error:
                        print("Failed to execute stored procedure: {}".format(error))
                    finally:
                        if (self.conn.is_connected()):
                            # self.cur.close()
                            # self.conn.close()
                            print("MySQL connection is closed")

    def vietnam_patients(self):
        wiki = "https://vi.wikipedia.org/wiki/Bản_mẫu:Bảng_thông_tin_COVID-19_tại_Việt_Nam"
        soup = self.get_header(wiki)
        tables = soup.findAll("table", {"class": "wikitable"})
        for tn, table in enumerate(tables):
            if tn == 0:
                rows = table.findAll("tr")
                row_lengths = [len(r.findAll(['th', 'td'])) for r in rows]
                ncols = max(row_lengths)
                nrows = len(rows)
                data = []
                for i in range(nrows):
                    rowD = []
                    for j in range(ncols):
                        rowD.append('')
                    data.append(rowD)

                for i in range(len(rows)):
                    row = rows[i]
                    rowD = []
                    cells = row.findAll(["td", "th"])
                    for j in range(len(cells)):
                        cell = cells[j]

                        #lots of cells span cols and rows so lets deal with that
                        cspan = int(cell.get('colspan', 1))
                        rspan = int(cell.get('rowspan', 1))
                        l  = 0
                        for k in range(rspan):
                            # Shifts to the first empty cell of this row
                            while data[i + k][j + l]:
                                l += 1
                            for m in range(cspan):
                                cell_n = j + l + m
                                row_n = i + k
                                # in some cases the colspan can overflow the table, in those cases just get the last item
                                cell_n = min(cell_n, len(data[row_n])-1)
                                data[row_n][cell_n] += cell.text


                    data.append(rowD)
                dab2 = []
            for i in range(len(data)):
                dab = []
                for x in data[i]:
                    x = x.replace('\n','')
                    x = x.replace('.','')
                    dab.append(x)
                dab2.append(dab)
            for i in range(1,len(dab2)):
                if i < 336:
                    vi = dab2[i]
                    mabenhvien = self.getmabenhvien(vi[6],vi[4])
                    maloaibenhvien = self.getmaloaibenhvien(vi[6])
                    mabn = 'bn'+str(vi[0])
                    madulieu = 'dlbn'
                    tenthanhpho = self.gettenthanhpho(str(vi[4]))
                    try:
                        args= (str(mabn),str(vi[1]),str(vi[3]),str(vi[5]), str(vi[9]),madulieu, str(vi[0]),str(vi[10]),str(vi[7]),str(vi[8]),
                                str(mabenhvien),str(vi[4]),str(vi[2]))
                        args2 = (str(mabenhvien),str(vi[6]),str(maloaibenhvien),tenthanhpho)
                        self.cur.callproc('proc_insert_dulieubenhnhan_vietnam', args)
                        self.cur.callproc ('proc_insert_dulieubenhvien_vietnam',args2)
                        # print results
                    except mysql.connector.Error as error:
                        print("Failed to execute stored procedure: {}".format(error))
                    finally:
                        if (self.conn.is_connected()):
                            # self.cur.close()
                            # self.conn.close()
                            print("MySQL connection is closed")
                            
    def got_khongdau(self,s):
        s = ViUtils.remove_accents(s)
        sr = s.decode()
        sr = sr.replace(' ',',')
        sr = sr.replace('.','')
        sr = re.sub('^,','',sr)
        return sr.lower()
    # def tudongtang(self,value):
    #     valuer = value
    #     value_altered = ''.join(chr(ord(l)+1) for l in valuer)
    #     valuex = str(valuer) + value_altered
    #     return valuex
    # def getmadulieutk(self,value,value2):
    #     # madulieutk = ''.join(chr(ord(letter)+1) for letter in value)
    #     valuey = value2 + value
    #     return valuey
    def getmaloaibenhvien(self,value):
        value = str(value)
        if 'Trung tâm' in value:
            value = 'ttyt'
        elif 'Dã chiến' in value:
            value = 'bvdc'
        else:
            value = 'bv'
        return value
    def get_id(self,value,value1):
        v = re.split('\s',value)
        for i in v:
             values = v[-1]
             values = re.sub('[^A-Za-z0-9]','',values)
        v = self.got_khongdau(str(values))
        v = str(v) + str(value1)
        return v
    def get_khuvuc(self,value):
        if "Việt Nam" not in value:
            value = 'TG'
        else:
            value = 'VN'
        return value
    def gettenthanhpho(self, value):
        value = value.replace('TP.','TP')
        value = '%' +value+ '%'
        return value
    def getmabenhvien(self,value,value1):
        v = re.split('\s',value)
        va = re.split('\s',value1)
        for i in range(len(v)):
             string = str(v[-2]) + str(v[-1])
             values = re.sub('[^A-Za-z0-9]','',string)
        for a in range(len(va)):
            string = string = str(va[-2]) + str(va[-1])
            val = re.sub('[^A-Za-z0-9]','',string)
        value = str(values) + str(val)
        value = value.lower()
        return value
    def get(self):
        self.cur.execute("select maquocgia, tenquocgia from quocgia")
        kq = self.cur.fetchall()
        print(len(kq))
        for i in kq:
            a = i[0].lower()
            b = i[1].lower()
            b = b.replace(' ',',')
            print('country('+a+')-->['+b+'].')

crawler()
