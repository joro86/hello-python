FROM python:3.8.0-slim
USER root
RUN mkdir /data

COPY . .

ARG personalAccessToken
RUN apt-get -y update
RUN apt-get -y install git

ENV GIT_PAT ${personalAccessToken}

RUN pip3 install -r requirements.txt
