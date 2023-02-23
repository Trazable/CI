FROM google/cloud-sdk:419.0.0-alpine

ENV DOCKER_COMPOSE_VERSION=1.27.4
RUN \
  # Necessary packages to install docker-compose on alpine version
  apk add --update --no-cache py3-pip python3-dev libffi-dev openssl-dev gcc libc-dev make && \
  # Upgrade pip
  pip3 install --upgrade pip && \
  # Install docker-compose
  pip install "docker-compose==${DOCKER_COMPOSE_VERSION}"
  