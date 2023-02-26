FROM ubuntu:jammy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq -y update && \
    apt-get -qq -y install icecast2 && \
    apt-get -y autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    chown -R icecast2 /etc/icecast2

EXPOSE 8000
VOLUME ["/config", "/var/log/icecast2", "/etc/icecast2"]
COPY assets /usr/share/icecast2/web/assets

USER icecast2
CMD icecast2 -n -c /etc/icecast2/icecast.xml
