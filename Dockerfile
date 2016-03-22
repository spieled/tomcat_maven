FROM daocloud.io/daocloud/dao-tomcat:v7.0.55
MAINTAINER shaoping.liu <spieled916@gmail.com>

ENV MAVEN_MAJOR_VERSION 3
ENV MAVEN_MINOR_VERSION 3.3.9
ENV M2_HOME /maven

# INSTALL TOMCAT
RUN wget --no-check-certificate -q http://mirrors.cnnic.cn/apache/maven/maven-${MAVEN_MAJOR_VERSION}/${MAVEN_MINOR_VERSION}/binaries/apache-maven-${MAVEN_MINOR_VERSION}-bin.tar.gz && \
    tar zxf apache-maven-*-bin.tar.gz && \
    rm apache-maven-*-bin.tar.gz && \
    mv apache-maven* maven

VOLUME ~/.m2

EXPOSE 8080
CMD ["/run.sh"]
