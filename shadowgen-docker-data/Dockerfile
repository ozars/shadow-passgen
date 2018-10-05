FROM debian:latest
MAINTAINER Omer Ozarslan (omer@utdallas.edu)
COPY passwords.txt /tmp/
COPY usergen.sh /tmp/
RUN \
  cd /tmp/ && \
  sh usergen.sh < passwords.txt


