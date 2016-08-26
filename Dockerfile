FROM ubuntu:14.04
MAINTAINER Murali Allada <murali.allada@rackspace.com>

# Update sources.list
COPY sources.list /etc/apt/sources.list

RUN apt-get -yqq update
RUN apt-get -yqq install python-dev
RUN apt-get -yqq install python-pip

COPY build.sh /solum/bin/
