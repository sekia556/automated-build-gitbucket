FROM centos

MAINTAINER sken <sken [at] sken.biz>
MAINTAINER sekia556 <sekia556 [at] yahoo.co.jp>

RUN yum -y update
RUN yum -y install java-1.7.0-openjdk
RUN yum clean all

ADD https://github.com/sekia556/gitbucket/releases/download/3.4.1/gitbucket.war /opt/gitbucket/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket
EXPOSE 8080

CMD ["java", "-jar", "/opt/gitbucket/gitbucket.war"]
