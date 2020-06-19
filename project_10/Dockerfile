FROM python:3
USER root
ADD run.py /
RUN pip install geopandas
CMD [ "python", "./run.py data" ]