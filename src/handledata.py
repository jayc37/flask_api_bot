from pyvi import ViUtils
from src.getdata_fromfile import check_sw,get_response
import re
from src.getdatalisttable import datatable
from underthesea import word_tokenize
import logging
import mysql.connector

# xử lý message:
def handle_response_code(message_chatbot):
        """ hàm gọi xử lý message"""
        try:
                message = got_message(message_chatbot)
                response = check_sw(message)
                response = get_response()
                if 'Không hiểu.' in response:
                        try:
                                conn = mysql.connector.connect(host="labando.com",
                                port=3306,
                                user="twoman",
                                password="@Twoman123456",
                                database = "covidinfomation")
                                cur = conn.cursor()
                                cur.execute("INSERT INTO cauhoichuaxuly(cauhoi,isHandle) VALUES(%s,%s)",(str(message_chatbot),'0'))
                                cur.close()
                                conn.commit()
                                response = clean_string(str(response))
                        except mysql.connector.Error as error:
                                logging.error("Failed to connected to database : {}".format(error))

                else:                       
                        response = datatable(response).get_datarow()
                return response
        except Exception as e:
                logging.error('<file <handledata.py>> function<handle_response_code>:' + str(e))

def got_message(message_chatbot):
        """Sử dụng thư viện pyvi loại bỏ tất cả các dấu trong câu"""
        try:
                mes = ViUtils.remove_accents(message_chatbot)
                message = mes.decode()
                message = clean_message(message)
                return message.lower()
        except Exception as e:
                logging.error('<file <handledata.py>> function<got_message>:' + str(e))
def format_datatk(data):
        """Chuyển dữ liệu sang dict"""
        try:
                dic = {}
                variable_spilit = data.split(',')
                list_split = []
                data = []
                for v in range(len(variable_spilit)):
                        if v != 0:
                                variable_spilit[v] = variable_spilit[v].replace(' ','')
                        list_split.append(variable_spilit[v])
                for i in range(len(list_split)):
                        t = list_split
                        dic['city'] = t[0]
                        dic['nhiem'] = t[1]
                        dic['nhiemmoi'] = t[2]
                        dic['chet'] = t[3]
                        dic['tonghoiphuc'] = t[4]
                        dic['dangdieutri'] = t[5]
                data.append(dic)   
                return data
        except Exception as e:
                logging.error('<file <handledata.py>> function<got_message>:' + str(e))

def clean_message(mesages):
        try:
                mesages = re.sub(r'[^a-zA-Z0-9]',' ',mesages)
                mesage = word_tokenize(mesages)
                mesage = ','.join(mesage)
                mesage = mesage.replace(' ',',')
                return mesage.lower()
        except Exception as e:
                logging.error('<file <handledata.py>> function<clean_message>:' + str(e))

def clean_string(resp):
        try:
                response = resp.replace('[','')
                response = response.replace(']','')
                response = response.replace("'","")
                return str(response)
        except Exception as e:
                logging.error('<file <handledata.py>> function<clean_string>:' + str(e))