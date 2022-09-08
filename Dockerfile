FROM python:bullseye

USER root
RUN mkdir /data

echo "PATTOKEN"

COPY . .

RUN pip3 install -r requirements.txt
