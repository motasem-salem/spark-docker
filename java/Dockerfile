FROM centos:6
MAINTAINER Motasem Salem <motasem@gmail.com>

RUN yum -y update

RUN curl -OL -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.rpm

RUN yum install -y jdk-8u91-linux-x64.rpm

ENV JAVA_HOME /usr/java/jdk1.8.0_91
CMD java -version
