# all the same import of api will be here
from src.package import *
import re
from src.handledata import handle_response_code
import logging
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------

class GetData(Resource):
    def get(self):
        try:
            data = request.args['data']
            print(data + "OKE")
            message_chatbot = handle_response_code(data)
            return message_chatbot, 200
        except Exception as e:
            logging.error(e)
        return 'Invalid', 400