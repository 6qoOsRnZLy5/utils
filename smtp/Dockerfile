FROM centos:latest

RUN yum -y install postfix rsyslog mailx && \
    alternatives --set mta /usr/sbin/sendmail.postfix && \
    mv /etc/postfix/main.cf /etc/postfix/main.cf.old.bak 

COPY postfix/main.cf /etc/postfix/main.cf
COPY postfix/run /run.postfix

COPY rsyslog/rsyslog.conf /etc/rsyslog.conf
COPY rsyslog/run /run.rsyslog

STOPSIGNAL SIGKILL

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]