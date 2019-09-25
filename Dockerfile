FROM dfqalves/ruby-oci8

MAINTAINER Edson Ma

RUN mkdir -p /opt/app

COPY . /opt/app

WORKDIR /opt/app

# RUN bundle install

