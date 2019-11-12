FROM centos:7.7

RUN yum -y install openldap-clients && \
                   openldap && \ 
                   openldap-devel && \
                   openssl-devel && \
                   libtool-ltdl-devel && \
                   libdb-devel && \
                   cyrus-sasl-devel && \
                   openldap-servers && \
    slappasswd -vs blablabla

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]