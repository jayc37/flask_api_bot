import logging
class datatable:
    """ class chuyển data từ string sang dictionary"""
    def __init__(self,data):
        self.data = data
        self.colections = []
        self.dataformat = None
        self.format_datarow()
        self.get_datarow()
    def format_datarow(self):
        try:
            dab = self.data
            data_format = []
            for i in range(len(dab)):
                variable_spilit = dab[i].split(',')
                list_split = []
                for v in range(len(variable_spilit)):
                    list_split.append(variable_spilit[v])
                data_format.append(list_split)
            self.dataformat = data_format
        except Exception as e:
                logging.error('<file <getdatalisttable.py>> function<format_datarow>:' + str(e))
    def get_datarow(self):
        try:
            output = {}
            arr = []
            for i in range(len(self.dataformat)):
                idab = self.dataformat[i]
                arr.append(idab)
            output['aaData'] = arr
            return output
        except Exception as e:
            logging.error('<file <getdatalisttable.py>> function<format_datarow>:' + str(e))
