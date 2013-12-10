golang
======

Docker image for running go applications

usage
=====

make a dockerfile for your application based on this one:

```
FROM mischief/golang
ENV HOME /root
RUN apt-get install -y libsqlite3-dev 
RUN go get github.com/robfig/revel/revel
RUN mkdir -p $GOPATH/src/github.com/PacketFire
RUN cd $GOPATH/src/github.com/PacketFire/; git clone https://github.com/PacketFire/goqdb.git
WORKDIR /root
CMD revel run github.com/PacketFire/goqdb prod
```

run it:

```
docker build -t mischief/goqdb .
docker run -d -p 9000:9000 mischief/goqdb
w3m http://127.0.0.1:9000/
```
