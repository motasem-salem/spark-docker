FROM motasem/java 
MAINTAINER Motasem Salem <motasem@gmail.com>

RUN yum -y install openssh-server openssh-clients rsync

RUN curl http://apache.mirror.vexxhost.com/hadoop/common/stable2/hadoop-2.7.2.tar.gz | tar xz -C /usr/local

ENV HADOOP_PREFIX /usr/local/hadoop-2.7.2
ENV HADOOP_CONF_DIR $HADOOP_PREFIX/etc/hadoop
ENV PATH $PATH:$HADOOP_PREFIX/bin:$HADOOP_PREFIX/sbin
COPY core-site.xml $HADOOP_CONF_DIR/core-site.xml
COPY hdfs-site.xml $HADOOP_CONF_DIR/hdfs-site.xml
COPY setup-ssh.sh /setup-ssh.sh

RUN /setup-ssh.sh

RUN echo export JAVA_HOME=$JAVA_HOME >> $HADOOP_CONF_DIR/hadoop-env.sh 
RUN $HADOOP_PREFIX/bin/hdfs namenode -format

COPY startup.sh /startup.sh

EXPOSE 50070

ENTRYPOINT ["/startup.sh"]

