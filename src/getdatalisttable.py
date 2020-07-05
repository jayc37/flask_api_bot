import logging
class datatable:
    def __init__(self,data):
        self.data = data
        self.colections = []
        self.cardinality_filtered = None
        self.cardinality = None
        self.dataformat = None
        self.format_datarow()
        self.run_queries()
        self.get_datarow()
    def format_datarow(self):
        dab = self.data
        data_format = []
        for i in range(len(dab)):
            variable_spilit = dab[i].split(',')
            list_split = []
            for v in range(len(variable_spilit)):
               list_split.append(variable_spilit[v])
            data_format.append(list_split)
        self.dataformat = data_format
    def get_datarow(self):
        output = {}
        arr = []
        for i in range(len(self.dataformat)):
            idab = self.dataformat[i]
            arr.append(idab)
        output['aaData'] = arr

        print(output)
        return output
    def run_queries(self):
         self.cardinality_filtered = len(self.dataformat)
         self.cardinality = len(self.dataformat)
