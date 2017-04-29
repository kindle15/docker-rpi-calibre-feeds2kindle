FROM resin/rpi-raspbian:jessie

MAINTAINER Andreas Mahnke <mahnkong@gmx.de>

RUN echo 'deb http://ftp.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list && \
    DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y calibre python-dnspython -t jessie-backports

COPY feeds2kindle.sh /feeds2kindle.sh
ENTRYPOINT ["/feeds2kindle.sh"]

