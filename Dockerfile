FROM centos:latest
MAINTAINER Jean-Christophe Proulx <j.christophe@devjc.net>
RUN yum install wget

ADD install /data/install/

RUN cd /data/install &&\
./install.sh 

RUN mv /data/install/mysql-connector-java-5.1.31-bin.jar /usr/local/Stash/atlassian-stash/WEB-INF/lib/mysql-connector-java-5.1.31-bin.jar

ADD supervisord.conf /etc/supervisord.d/stash .conf
EXPOSE 7990