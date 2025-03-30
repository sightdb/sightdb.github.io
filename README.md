# SightDB Website Repository

This repository hosts the source code for SightDB's official website and blog at [sightdb.github.io](https://sightdb.github.io).

## About

SightDB is a PostgreSQL-based database implementing CouchDB API, designed for Kazoo cluster environments. Learn more at our [Docker Hub page](https://hub.docker.com/repository/docker/koctep/sightdb/general).

## Technology

- Jekyll - Static site generator
- GitHub Pages - Hosting platform
- Markdown - Content format

## Development Setup

```bash
# Install dependencies
gem install bundler jekyll
bundle install

# Start local server
bundle exec jekyll serve
# Visit http://localhost:4000
```

## Content Management

### Structure
- `_posts/` - Blog posts (YYYY-MM-DD-title.md)
- `_pages/` - Static pages
- `assets/` - Static files
- `_config.yml` - Site configuration

### Adding Content

#### Blog Posts
```yaml
---
layout: post
title: "Your Post Title"
date: YYYY-MM-DD HH:MM:SS +0000
categories: [category1, category2]
---
Content in Markdown
```

#### Pages
```yaml
---
layout: page
title: "Page Title"
permaname: /url-path/
---
Content in Markdown
```

## Deployment

Push changes to main branch for automatic deployment:
```bash
git add .
git commit -m "Your changes"
git push origin main
```

## Contributing

1. Create a feature branch
2. Make changes and test locally
3. Submit pull request
4. Await review

## Support

- Check [Jekyll documentation](https://jekyllrb.com/docs/)
- Open an issue in this repository
- Contact development team