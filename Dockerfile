FROM python:3.8.0-slim
USER root
RUN mkdir /data

COPY . .

ARG personalAccessToken

RUN apt-get -y update
RUN apt-get -y install git

RUN pip3 install git+https://${personalAccessToken}@github.com/joro86/pipandgit@0.0.15

ENV GIT_PAT ${personalAccessToken}

RUN pip3 install -r requirements.txt
