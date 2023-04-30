FROM ubuntu:latest

RUN apt-get update && apt-get install -y  curl

ADD check.sh ./check.sh
RUN chmod +x ./check.sh

CMD while true; do ./check.sh ;sleep 30; done
