#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'machine learning usergroup stuttgart'
SITENAME = u'MLUGS'
SITEURL = ''

#THEME = "/srv/pelican-website/theme"
THEME = "theme"

PATH = 'content'

TIMEZONE = 'Europe/Berlin'

DEFAULT_LANG = u'de'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

DEFAULT_PAGINATION = 10
STATIC_PATHS = ['images', ]

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True

ARTICLE_URL = "{slug}/"
ARTICLE_SAVE_AS = "{slug}/index.html"

PAGE_URL = "pages/{slug}/"
PAGE_SAVE_AS = "pages/{slug}/index.html"

CATEGORY_URL = "category/{slug}"
CATEGORY_SAVE_AS = "category/{slug}/index.html"

GITHUB_ADDRESS = "https://github.com/mlugs/"
TWITTER_ADDRESS = "https://twitter.com/mlugs_de/"
DEFAULT_DATE_FORMAT = '%d. %B %Y'
