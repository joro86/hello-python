FROM python:3.8.0-slim
ARG GITHUB_TOKEN=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

ENV GITHUB_TOKEN ${TOKEN}

USER root
RUN mkdir /data

COPY . .
RUN pip3 install -r requirements.txt
