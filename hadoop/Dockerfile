FROM motasem/java 
MAINTAINER Motasem Salem <motasem@gmail.com>

RUN yum -y install openssh-server openssh-clients rsync

RUN curl -O http://apache.mirror.vexxhost.com/hadoop/common/stable2/hadoop-2.7.2.tar.gz
RUN cd /usr/local/ && tar xvf /hadoop-2.7.2.tar.gz

RUN service sshd start

