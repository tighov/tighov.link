#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = "Tigran Hovhannisyan"
SITENAME = "The Hov"

SITETITLE = "Infrastructure as Code. CI/CD. Cloud Engineering."
SITESUBTITLE = "Turning Cloud Complexity into Developer Simplicity"
SITEDESCRIPTION = "Helping teams build, automate, and scale in the cloud with ease."

SITEURL = "https://tighov.link"

PATH = "content"

TIMEZONE = "Europe/Paris"

DEFAULT_LANG = "en"

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (
    ("Pelican", "http://getpelican.com/"),
    ("Python.org", "http://python.org/"),
    ("Jinja2", "http://jinja.pocoo.org/"),
    ("You can modify those links in your config file", "#"),
)

# Social widget
# SOCIAL = (('You can add links in your config file', '#'),
#           ('Another social link', '#'),)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = False

THEME = "theme"

STATIC_PATHS = [
    "images",
    "cv",
    "extra",
]

EXTRA_PATH_METADATA = {
    "extra/css/custom.css": {"path": "custom.css"},
    "extra/js/custom.js": {"path": "custom.js"},
    "extra/robots.txt": {"path": "robots.txt"},
    "extra/favicon.ico": {"path": "favicon.ico"},
    "extra/CNAME": {"path": "CNAME"},
    "extra/LICENSE": {"path": "LICENSE"},
    "extra/README": {"path": "README"},
}

HEADER_COVER = "images/home-bg.jpg"

INTRO_CONTENT = """
    <p class="lead">👋 Hello and welcome to my personal website!</p>

    <p>
    I’m Tigran Hovhannisyan, a DevOps and Cloud Infrastructure Engineer with over 12 years of experience building scalable, automated, and reliable platforms across major cloud providers such as GCP, AWS, and OCI.
    </p>

    <p>
    Here you’ll find details about my professional journey — from designing developer platforms and CI/CD pipelines to implementing Infrastructure as Code and container orchestration solutions. My passion is helping teams ship faster, operate reliably, and scale effortlessly through automation and cloud-native best practices.
    </p>

    <p>
    Feel free to explore my resume, browse my personal projects, or reach out if you’d like to collaborate on challenging infrastructure or cloud engineering problems.
    </p>
    
    <p>
    Thanks for visiting!
    </p>
"""

MAIN_MENU = [
    (
        "CV",
        "",
        (
            ("PDF", "cv/tighov_link_full.pdf"),
            ("MS Word", "cv/tighov_link_full.docx"),
            ("PDF Python Web", "cv/tigran_python_web_full.pdf"),
            ("MS Word Python Web", "cv/tigran_python_web_full.docx"),
            ("LinkedIn Profile", "https://www.linkedin.com/in/thetigran"),
        ),
    )
]

SERVICES = []

CSS_OVERRIDE = "custom.css"

CUSTOM_JS = "custom.js"
