# Base ubuntu system

FROM ubuntu:12.04
MAINTAINER Joel Larsson, tilljoel@gmail.com

RUN apt-get update
RUN apt-get install -y wget
RUN wget -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN apt-get update
RUN apt-get install language-pack-en
RUN locale-gen en_US.UTF-8 && dpkg-reconfigure locales
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN apt-get install -y telnet
