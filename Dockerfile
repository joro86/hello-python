FROM python:3.8.0-slim
USER root
RUN mkdir /data

COPY . .

ARG personalAccessToken

RUN apt-get -y update
RUN apt-get -y install git
RUN pip install --upgrade pip


RUN pip3 install -r requirements.txt
