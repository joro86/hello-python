FROM python:bullseye
ARG GITHUB_TOKEN=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

USER root
RUN mkdir /data

RUN echo test



COPY . .

RUN pip3 install -r requirements.txt
