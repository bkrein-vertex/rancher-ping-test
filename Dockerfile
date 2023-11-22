FROM ubuntu:22.04

RUN apt update && apt upgrade -y \
  && apt -y install dnsutils

COPY ping-test.sh /

ENTRYPOINT ["/ping-test.sh"]
