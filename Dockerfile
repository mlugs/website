FROM python:3
MAINTAINER X

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN pip install --upgrade pelican Markdown ghp-import shovel fabric

USER 1000

WORKDIR /srv/pelican-website
EXPOSE 8000
CMD make devserver
