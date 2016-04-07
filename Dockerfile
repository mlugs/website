FROM debian:jessie
MAINTAINER X

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    bash \
    curl \
    git \
    locales \
    sudo \
    python-pip \
    python-dev \
    && rm -rf /var/lib/apt/lists/*

# Install dependencies
RUN pip install pelican Markdown ghp-import shovel
RUN pip install --upgrade pelican Markdown ghp-import shovel fabric

USER 1000

WORKDIR /srv/pelican-website
EXPOSE 8000
CMD make devserver
