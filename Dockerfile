# FROM ubuntu
# MAINTAINER "jagadish Manchala"
# #Install git
# RUN apt-get update \
#      apt-get install -y git
# RUN mkdir /home/sampleTest \
#            cd /home/sampleTest \
#            git clone https://github.com/jagadish12/SampleTest.git
# #Set working directory
# WORKDIR /home/sampleTest
#--------------------------------
FROM python:3.7-alpine

RUN git clone https://github.com/adfel70/RCTest.git

WORKDIR /code
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt


EXPOSE 5000