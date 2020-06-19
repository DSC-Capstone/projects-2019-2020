import requests
import gzip
import shutil
import shlex
import subprocess as sp
import os

def download_file_from_google_drive(id, destination):
    URL = "https://docs.google.com/uc?export=download"

    session = requests.Session()

    response = session.get(URL, params = { 'id' : id }, stream = True)
    token = get_confirm_token(response)

    if token:
        params = { 'id' : id, 'confirm' : token }
        response = session.get(URL, params = params, stream = True)

    save_response_content(response, destination)    

def get_confirm_token(response):
    for key, value in response.cookies.items():
        if key.startswith('download_warning'):
            return value

    return None

def save_response_content(response, destination):
    CHUNK_SIZE = 32768

    with open(destination, "wb") as f:
        for chunk in response.iter_content(CHUNK_SIZE):
            if chunk: # filter out keep-alive new chunks
                f.write(chunk)

def uncompress(filename, folder):
    cmd = shlex.split(("unzip {} -d {}").format(filename, folder))
    sp.call(cmd)
    
def get_data(file_list, data_dir):
    if not os.path.exists(data_dir):
        os.makedirs(data_dir)
    for file_id, filename in file_list:
        destination = data_dir+filename
        download_file_from_google_drive(file_id, destination)
        uncompress(destination, data_dir)
        
def get_metal(url):
    cmd = shlex.split(("wget {}").format(url))
    sp.call(cmd)
    cmd = shlex.split(("tar xvzf Linux-metal.tar.gz"))
    sp.call(cmd)
    cmd = shlex.split(("rm Linux-metal.tar.gz"))
    sp.call(cmd)