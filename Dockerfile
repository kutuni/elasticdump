FROM ubuntu:latest
MAINTAINER Spencer Herzberg <spencer.herzberg@gmail.com>

RUN apt-get update -qq && apt-get install -y software-properties-common nodejs npm
#RUN apt-add-repository ppa:chris-lea/node.js
#RUN apt-get update -qq && apt-get install -y nodejs

RUN npm install -g elasticdump

ENTRYPOINT ["/usr/local/bin/elasticdump"]
