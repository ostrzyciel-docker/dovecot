FROM debian:bullseye

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    dovecot-core \
    dovecot-imapd \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

VOLUME /etc/dovecot /srv/mail

CMD ["/usr/sbin/dovecot", "-F"]
