FROM python:3.8.0-slim
ARG GITHUB_TOKEN=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

ENV GITHUB_TOKEN=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

USER root
RUN mkdir /data

COPY . .


RUN apt-get -y update
RUN apt-get -y install git
RUN pip install --upgrade pip

RUN git clone https://joro86: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@github.com/joro86/pipandgit.git

RUN pip3 install -r requirements.txt
