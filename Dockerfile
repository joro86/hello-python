FROM python:bullseye

USER root
RUN mkdir /data

COPY . .

RUN pip3 install -r requirements.txt
