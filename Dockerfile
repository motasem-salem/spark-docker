FROM centos:7
MAINTAINER Motasem Salem <motasem@gmail.com>

ENV JAVA_HOME /usr/java/jdk1.8.0_65

RUN curl -L -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.rpm -O

RUN yum install -y jdk-8u65-linux-x64.rpm