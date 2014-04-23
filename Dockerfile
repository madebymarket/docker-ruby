FROM bradrydzewski/ruby:2.0.0

# apt
RUN sudo apt-get install -y r-base

ADD scripts /var/cache/drone
RUN cd /var/cache/drone && sudo chmod +x *.sh && ./ruby.sh
