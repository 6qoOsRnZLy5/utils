FROM centos:latest

RUN yum -y install dovecot

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]