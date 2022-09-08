FROM python:bullseye

USER root
RUN mkdir /data

RUN echo test

COPY . .

RUN pip3 install -r requirements.txt
