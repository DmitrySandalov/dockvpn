FROM phusion/baseimage:0.9.17

RUN apt-get update -q
RUN apt-get install -qy openvpn iptables socat curl
RUN rm -rf /var/lib/apt/lists/*

ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp
CMD run
