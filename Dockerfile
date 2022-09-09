FROM python:bullseye
ARG GITHUB_TOKEN=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

RUN echo @{{GITHUB_TOKEN}}

USER root
RUN mkdir /data

RUN echo test



COPY . .

RUN pip3 install -r requirements.txt
