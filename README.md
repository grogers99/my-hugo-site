# GA Rogers Consulting

## Purpose of the project

This project is a personal and professional website for Gareth Rogers, built to showcase consulting work, thought leadership articles, community involvement, and project examples. The site is designed to be simple, credible, and easy to maintain while presenting a polished business profile that can be published online.

The site is intended to:

- Present consultancy services and professional background clearly.
- Highlight selected projects, work examples, and case studies.
- Publish articles and insights related to business analysis, requirements engineering, digital transformation, and related topics.
- Provide a professional online presence that can be updated without complex CMS tooling.
- Serve as a low-maintenance static website that can be hosted on a simple platform such as GitHub Pages or another static hosting provider.

## Project overview

This repository contains a Hugo static site configured for a lightweight, content-first publishing workflow. It uses a theme-based layout and stores most content in Markdown files under the `content/` directory. The generated output is a static HTML site that can be deployed without a backend or database.

## Requirements

Before running the site locally, make sure you have the following installed:

- Hugo (extended version recommended)
- Git
- A terminal such as bash, zsh, or PowerShell

To check whether Hugo is installed:

```bash
hugo version
```

## Compile and run locally

This project includes a `Makefile` with common development commands.

### Basic Hugo commands

These are the fundamental commands used during local development and testing:

```bash
# start the site locally with drafts enabled
hugo server -D

# start the site locally without drafts
hugo server

# build the site into the public/ folder
hugo

# build for production with minified output
hugo --minify

# create a new content file from an archetype
hugo new content posts/my-post.md
```

### Start the local development server

```bash
make serve
```

This runs Hugo in development mode with drafts enabled, which makes it easier to preview in-progress work.

Once the server is running, open the site in your browser at:

```text
http://localhost:1313/
```

You can also start it directly with Hugo:

```bash
hugo server -D
```

Then visit:

```text
http://localhost:1313/
```

### Use a different theme

The site can be switched between themes using the `THEME` variable. Example:

```bash
make serve THEME=hextra
```

Available theme options include:

- `ananke`
- `hextra`
- `console`

### Build the static site for production

```bash
make build
```

This generates the final static site output in the `public/` directory.

### Common local commands

```bash
make serve-ananke
make serve-hextra
make serve-console
```

## Sync with GitHub

This project is intended to work as a git-based publishing workflow.

### Initial setup

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin <your-github-repo-url>
git push -u origin main
```

### Typical workflow

```bash
git status
git add .
git commit -m "Update site content"
git push origin master
```

### Best practices

- Commit small, focused changes for content updates and design tweaks.
- Use meaningful commit messages.
- Keep generated output in the repository only if you intentionally want to track it; otherwise, keep generated files out of source control if your hosting setup does not require them.
- If using GitHub Pages or a deployment workflow, configure the repository to publish from the correct branch or action.

## Technical project structure

The repository is organized as follows:

- `hugo.toml` — main Hugo configuration, site metadata, menus, and taxonomies.
- `config/themes/` — theme-specific configuration files that override or extend default theme settings.
- `content/` — page and post content in Markdown, including projects, articles, community pages, and work examples.
- `layouts/` — custom templates and partials for the site's structure and navigation.
- `assets/` — theme assets and custom styling resources.
- `static/` — static files such as images and other assets served directly by the site.
- `public/` — generated output from a Hugo build.
- `themes/` — local theme source files, including the active theme and any alternatives.
- `archetypes/` — templates used for creating new content quickly.

### Important design decisions

- Hugo was chosen because it is fast, reliable, and ideal for creating static content-rich websites without a database.
- The content model is file-based, which makes edits simple and version-controlled in Git.
- Theme configuration is separated from core site configuration to allow easier theme switching and testing.
- Content is split into logical sections such as projects, articles, community, and examples, which keeps the site structured and easier to navigate.
- The site intentionally keeps a lightweight architecture so it remains easy to maintain, host, and extend over time.

## ToDo

This section tracks items to complete as the site evolves.

- Content:
- [X] Add CV section ie. chronological CV
- [X] Add voluntary details: ie. IREB Community Ambassador, IREB RE@Agile (Contributor & Examiner), IREB Prototyping with AI
- [ ] Review project details, check date & therefore display order, check keywords
- [ ] Improve AI4RE community section with some general thoughts about AI and relevance for RE
- [ ] Add work/dev details: FTTH BPMN, Glossary (?), this website, tennis match
- [ ] Add Contact page

- Appearance:
- [ ] Improve logo visibility
- [ ] ...

- Other:
- [ ] Review and refine the homepage messaging and positioning.
- [ ] Add a clear services or consulting offer section.
- [ ] Improve the About/Professional profile page with biography and credentials.
- [ ] Add more case studies and project descriptions with stronger business outcomes.
- [ ] Ensure all content pages have consistent front matter and metadata.
- [ ] Check accessibility, mobile responsiveness, and readability across devices.
- [ ] Configure deployment to GitHub Pages or another hosting provider.

