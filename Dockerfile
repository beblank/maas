FROM phusion/baseimage

RUN apt-get update && apt-get -y --no-install-recommends install dnsmasq wget net-tools

COPY files/start.sh /start.sh
COPY files/dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 53
