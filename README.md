# tighov.link — Redesigned Theme

## What's in this package

```
theme/
  static/
    css/style.css          ← all styles (custom, no framework)
    images/profile.jpg     ← your profile photo
  templates/
    base.html              ← nav + footer wrapper
    index.html             ← home page (hero + post list + sidebar)
    article.html           ← single post
    page.html              ← static pages (projects, etc.)
    archives.html
    tag.html
    category.html

content/
  pages/
    projects.md            ← /projects.html page

pelicanconf.py             ← updated config
publishconf.py             ← production config
```

## Integration steps

### 1. Replace your existing theme folder

```bash
# From repo root
rm -rf theme/
cp -r /path/to/this-package/theme ./theme
```

### 2. Copy the projects page

```bash
cp /path/to/this-package/content/pages/projects.md content/pages/projects.md
```

### 3. Update pelicanconf.py

Replace your existing `pelicanconf.py` with the one provided, or merge in the
key settings:

```python
THEME = 'theme'
CONTACT_EMAIL = 'tigran@tighov.link'   # your real address
COPYRIGHT_YEAR = '2026'
ARTICLE_URL     = '{slug}.html'
ARTICLE_SAVE_AS = '{slug}.html'
PAGE_URL        = '{slug}.html'
PAGE_SAVE_AS    = '{slug}.html'
```

### 4. Profile photo

The photo is at `theme/static/images/profile.jpg`.
To replace it, drop a new file at the same path (ideally square, ≥200×200px).

### 5. Update project cards

Edit `content/pages/projects.md` — the HTML is straightforward.
Each card follows this pattern:

```html
<div class="project-card">
  <div class="project-card-top">
    <div class="project-icon icon-teal"><!-- SVG icon --></div>
    <span class="project-status status-live">live</span>
  </div>
  <p class="project-name">Project Name</p>
  <p class="project-desc">Short description.</p>
  <div class="project-stack">
    <span class="skill-tag k8s">Kubernetes</span>
    ...
  </div>
  <div class="project-links">
    <a href="https://github.com/..." class="project-link">GitHub</a>
  </div>
</div>
```

Status classes: `status-live`, `status-wip`, `status-archived`  
Icon colour classes: `icon-teal`, `icon-blue`, `icon-amber`, `icon-purple`, `icon-green`, `icon-coral`  
Skill tag colour classes: `k8s`, `gcp`, `aws`, `iac`, `ci` (or unstyled)

### 6. Build

```bash
make html          # dev build
make publish       # production build (uses publishconf.py)
make devserver     # live-reload at http://localhost:8000
```

## Design notes

- **Fonts**: DM Serif Display (headings), DM Mono (labels/code), Outfit (body)
- **Accent colour**: `#1D9E75` (teal/green — change in `style.css` `:root` vars)
- **No JS dependencies** — pure CSS, works without JavaScript
- **Responsive**: mobile-first, collapses to single column below 768px
- **Availability pill**: edit in `index.html` hero section if status changes
