from pyvi import ViUtils
from src.getdata_fromfile import check_sw,get_response
import re
from src.getdatalisttable import datatable
def handle_response_code(message_chatbot):
        message = got_message(message_chatbot)
        print(message)
        
        response = check_sw(message)
        response = get_response()
        if 'benh,nhan' in message:
                response = datatable(response).get_datarow()
        else:
                response = str(response)
        return response
    
def got_message(message_chatbot):
        mes = ViUtils.remove_accents(message_chatbot)
        message = mes.decode()
        message = message.replace(' ',',')
        message = re.sub('^,','',message)
        return message.lower()
def format_datatk(data):
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
        print(dic)
        return data
