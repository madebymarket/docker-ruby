FROM bradrydzewski/ruby:2.0.0

# apt
RUN sudo apt-get install -y r-base

RUN export PATH=$PATH:/home/ubuntu/.rbenv/bin                                         && \
    export RBENV_VERSION=2.0.0-p353                                                   && \
    eval "$(rbenv init -)"                                                            && \
    CC=gcc rbenv install 2.0.0-p353                                                   && \
    rbenv rehash                                                                      && \
    rbenv global 2.0.0-p353                                                           && \
    rbenv rehash                                                                      && \
    gem install bundler                                                               && \
    rbenv rehash
