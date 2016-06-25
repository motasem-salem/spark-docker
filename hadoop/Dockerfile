FROM motasem/java 
MAINTAINER Motasem Salem <motasem@gmail.com>

RUN yum -y install openssh-server openssh-clients rsync

RUN curl http://apache.mirror.vexxhost.com/hadoop/common/stable2/hadoop-2.7.2.tar.gz | tar xz -C /usr/local

COPY startup.sh /startup.sh

ENTRYPOINT ["/startup.sh"]

