FROM ucsdets/scipy-ml-notebook
USER root

RUN apt update
RUN apt install -y git python3.7 python3-pip
WORKDIR /usr/src
RUN git clone https://github.com/zhuoranzoeli/CodeHonestly.git
RUN mv CodeHonestly project
RUN pip install -r project/requirements.txt
