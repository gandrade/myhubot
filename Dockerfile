FROM node:6.9.5

MAINTAINER Gustavo Andrade gustavoandrade82@gmail.com

ENV HUBOT_FLOWDOCK_API_TOKEN <personal-api-token-here> 
ENV HUBOT_NAME hal
ENV WORKDIR /hubot

ADD . /opt
WORKDIR /opt

RUN apt-get update && apt-get install build-essential python -y
CMD ["./bin/hubot", "--name", "${HUBOT_NAME}", "--adapter", "flowdock"]


