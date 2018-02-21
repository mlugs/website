FROM python:3
MAINTAINER X

ENV DEBIAN_FRONTEND noninteractive

ADD requirements.txt /srv/requirements.txt
RUN pip install -r /srv/requirements.txt

USER 1000

WORKDIR /srv/pelican-website
EXPOSE 8000
CMD make devserver
