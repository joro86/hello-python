FROM python:3.8.0-slim
USER root
RUN mkdir /data

COPY . .

ARG personalAccessToken


ENV GIT_PAT ${personalAccessToken}

RUN pip3 install -r requirements.txt
