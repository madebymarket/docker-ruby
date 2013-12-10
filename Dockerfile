FROM ubuntu:12.04

# env vars
ENV HOME /root
ENV GOPATH /root/go
ENV PATH /root/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# GOPATH
RUN mkdir -p /root/go

# apt
RUN echo "deb http://mirror.anl.gov/pub/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y build-essential mercurial git-core subversion wget

# go tip
RUN cd /usr/local; hg clone https://code.google.com/p/go
RUN cd /usr/local/go/src; ./all.bash

