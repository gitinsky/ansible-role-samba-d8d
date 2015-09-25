FROM gitinsky/baseimage:0.1.1
MAINTAINER Git In Sky <support@gitinsky.com>

EXPOSE 445 137 138 139 137/udp 138/udp 139/udp

VOLUME /shares

RUN apt-get update \
    && apt-get install -y \
    samba samba-common python-glade2 system-config-samba \
    && rm -rvf /var/lib/apt/lists/*
RUN mv -v /etc/samba/smb.conf /etc/samba/smb.conf.orig

ADD samba.rb /etc/eye/samba.rb
