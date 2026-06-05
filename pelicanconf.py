#!/usr/bin/env python
# -*- coding: utf-8 -*- #

AUTHOR = 'Tigran Hovhannisyan'
SITENAME = 'The Hov'
SITEURL = ''

PATH = 'content'
THEME = 'theme'

TIMEZONE = 'Asia/Yerevan'
DEFAULT_LANG = 'en'
DEFAULT_DATE_FORMAT = '%d %b %Y'

# ── Custom variables available in templates ────────────────────
# Paste your AWS API Gateway endpoint URL here (the same one used in the original theme)
# It looks like: https://xxxxxxxxxx.execute-api.eu-west-1.amazonaws.com/prod/contact
LAMBDA_ENDPOINT = 'https://YOUR_API_GATEWAY_URL/prod/contact'
COPYRIGHT_YEAR = '2026'

# ── Feed config ────────────────────────────────────────────────
FEED_ALL_ATOM = 'feeds/all.atom.xml'
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# ── Pagination ─────────────────────────────────────────────────
DEFAULT_PAGINATION = 10

# ── Static files ───────────────────────────────────────────────
STATIC_PATHS = ['images', 'cv', 'extra']
EXTRA_PATH_METADATA = {
    'extra/robots.txt': {'path': 'robots.txt'},
    'extra/favicon.ico': {'path': 'favicon.ico'},
}

# ── URL structure ──────────────────────────────────────────────
ARTICLE_URL     = '{slug}.html'
ARTICLE_SAVE_AS = '{slug}.html'
PAGE_URL        = '{slug}.html'
PAGE_SAVE_AS    = '{slug}.html'

# ── Template pages (direct_templates generates standalone pages) ──
DIRECT_TEMPLATES = ['index', 'archives']

# ── Social (unused by custom theme, kept for reference) ───────
SOCIAL = (
    ('LinkedIn', 'https://linkedin.com/in/thetigran'),
    ('GitHub',   'https://github.com/tighov'),
)

RELATIVE_URLS = True
