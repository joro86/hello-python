FROM python:bullseye

USER root
RUN mkdir /data

RUN echo ${{ secrets.PAT }}

COPY . .

RUN pip3 install -r requirements.txt
