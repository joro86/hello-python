FROM python:bullseye

USER root
RUN mkdir /data

RUN echo test

ARG GITHUB_TOKEN = "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"

COPY . .

RUN pip3 install -r requirements.txt
