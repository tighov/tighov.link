#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Tigran Hovhannisyan'
SITENAME = 'The Tigran'

SITETITLE = 'C, C++, Python, AWS, GO, Back-End, Dev-Ops'
SITESUBTITLE = 'and other stuff developers do'

SITEURL = ''

PATH = 'content'

TIMEZONE = 'Europe/Paris'

DEFAULT_LANG = 'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('Pelican', 'http://getpelican.com/'),
         ('Python.org', 'http://python.org/'),
         ('Jinja2', 'http://jinja.pocoo.org/'),
         ('You can modify those links in your config file', '#'),)

# Social widget
# SOCIAL = (('You can add links in your config file', '#'),
#           ('Another social link', '#'),)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = False

THEME = 'theme'

STATIC_PATHS = [
    'images',
    'cv',
    'extra',
]

EXTRA_PATH_METADATA = {
    'extra/css/custom.css': {'path': 'custom.css'},
    'extra/js/custom.js':{'path': 'custom.js'},
    'extra/robots.txt': {'path': 'robots.txt'},
    'extra/favicon.ico': {'path': 'favicon.ico'},
    'extra/CNAME': {'path': 'CNAME'},
    'extra/LICENSE': {'path': 'LICENSE'},
    'extra/README': {'path': 'README'},
}

HEADER_COVER = "images/home-bg.jpg"

INTRO_CONTENT = """
    <p class="lead">
      I am passionate about software development, and in an age of digital I believe bringing ideas to life with code is essential. So, I specialise in a multi-disciplined approach to my work incorporating software design and development.
      <br><br>
      A full-time software developer, I’m 32 and currently based in Cork in Ireland.
    </p>

    <p>
      The focus of my work shifts as the need arises for certain skills in the working environment. This can be both a positive and negative experience, on the one hand you can hone your skills in an in-demand area, but on the other hand you’re ready to explore different areas. This is why I explore ideas and concepts outside of my work so I always have something new to share.
    </p>

    <p>
      At work I’m known for my love of extracurricular activity! I enjoy creating side projects outside of my working life to share and engage with others. This can be through competitions, websites or games. Work makes up such a big part of our lives and I believe in expanding my ideas and skills without needing it to be on a employee brief.
    </p>

    <p>
      My work doesn’t end with the brief. Going above and beyond the parameters that have been set out is essential, not only for your own personal achievement and development but it reflects back into the work you produce.
    </p>
"""

MAIN_MENU = [
("CV", "", (("One Page (PDF)", "cv/tighov_link.pdf"),
            ("One Page (MS Word)", "cv/tighov_link.doc"),
            ("Full (PDF)", "cv/tighov_link_full.pdf"),
            ("Full (MS Word)", "cv/tighov_link_full.docx"),
            ("Linkedin Profile", "http://www.linkedin.com/in/thetigran")
           ))
]

SERVICES = []

CSS_OVERRIDE = 'custom.css'

CUSTOM_JS = 'custom.js'

