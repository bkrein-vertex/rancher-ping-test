FROM ubuntu:22.04

ENV TARGET="api.github.com"
ENV SLEEP="2"

RUN apt update && apt upgrade -y \
  && apt -y install dnsutils

COPY ping-test.sh /

CMD ["/test-ping.sh"]
