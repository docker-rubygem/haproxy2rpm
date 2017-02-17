FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.0

RUN gem install haproxy2rpm --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["haproxy2rpm"]
CMD ["--help"]
