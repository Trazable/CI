FROM google/cloud-sdk:271.0.0-alpine

ENV \
  TERRAFORM_VERSION=0.12.12 \
  DOCKER_COMPOSE_VERSION=1.24.1

RUN \
  # Necessary packages to install docker-compose on alpine version
  apk add --update --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make && \
  # Upgrade pip
  pip install --upgrade pip && \
  # Download terraform for linux
  wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  # Unzip
  unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d "/usr/local/bin" && \
  # Delete terraform zip
  rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  # Install docker-compose
  pip install "docker-compose==${DOCKER_COMPOSE_VERSION}"
  