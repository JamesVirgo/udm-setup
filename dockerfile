FROM python:3.8
RUN apt-get -y update
RUN apt-get -y install
RUN pip3 install pandas

COPY main.py .
COPY data /data

ENTRYPOINT python main.py