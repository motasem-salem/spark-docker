FROM centos:7
MAINTAINER Motasem Salem <motasem@gmail.com>

ENV JAVA_HOME /usr/java/jdk1.8.0_65

RUN curl -OL -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.rpm

RUN yum install -y jdk-8u91-linux-x64.rpm
CMD java -version
