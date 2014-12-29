FROM centos:latest
MAINTAINER Russ Harmon <eatnumber1@gmail.com>

RUN yum -y -q install python-setuptools
RUN easy_install -q -O2 supervisor supervisor-stdout
RUN mkdir /etc/supervisord.d
ADD supervisord.conf /etc/

CMD ["/usr/bin/supervisord", "--configuration", "/etc/supervisord.conf"]
