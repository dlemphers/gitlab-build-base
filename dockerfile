FROM docker:latest

MAINTAINER Dave Lemphers <dave@mycodepilot.com>

RUN apk add --update curl py-pip jq git make openssh && rm -rf /var/cache/apk/*

RUN pip install awscli

COPY ./amazon-ecr-credential-helper/bin/local/docker-credential-ecr-login /usr/local/bin/docker-credential-ecr-login
RUN chmod +x /usr/local/bin/docker-credential-ecr-login

COPY ./docker-config.json /root/.docker/config.json
