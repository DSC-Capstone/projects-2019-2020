from flask import Flask, request, render_template, abort
from flask_cors import CORS
import preprocess as pp, json, similarity as sim, traceback, logging

application = Flask(__name__)
CORS(application)
logging.basicConfig(level=logging.DEBUG)

# @application.route('/')
# def index():
#     return render_template('index.html')

@application.route('/ast2json', methods=['POST'])
def process():
    '''
    POST request endpoint to convert code into an AST in JSON format

    @param input Code to convert
    @param ctx Remove context nodes
    @param normalize: Perform code normalization

    @return AST in JSON format to parse
    '''
    return json.dumps(pp.process(request.form.get('input'), request.form.get('ctx') == 'true', request.form.get('normalize') == 'true'))

@application.route('/simreport', methods=['POST'])
def similarity():
    '''
    POST request endpoint to generate a similarity report. Password required for 2+ files

    @param input[0-9]+ Code to convert
    @param password Password for server

    @return JSON object containing similarity report, including overview and detailed
    '''
    keys = [key for key in request.form.keys() if key[:5] == 'input' and key[5:].isdigit()]
    if len(keys) > 2:
        with open('password.txt') as f:
            if 'password' not in request.form.keys() or request.form.get('password') != f.read().strip():
                return json.dumps({
                    'error': 'Wrong password'
                })
    try:
        trees = [(key, pp.process(request.form.get(key))) for key in keys]
        return json.dumps(sim.process(trees))
    except SyntaxError as e:
        logging.error(traceback.format_exc())
        return json.dumps({
            'errors': ['Supplied code contains syntax errors']
        })
    except Exception as e:
        logging.error(traceback.format_exc())
        return json.dumps({
            'errors': [str(e)]
        })

if __name__ == '__main__':
    application.run(host='0.0.0.0')
