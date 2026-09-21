# Zhuoyan Yu — academic homepage

A dependency-free static site for GitHub Pages. Open `index.html` directly or
serve the repository with a local static HTTP server. No build step, JavaScript,
remote font requests, or analytics scripts are required.

## Start the local preview on Windows

Double-click `start-preview.cmd`, keep its window open, and visit
http://127.0.0.1:8765/ for the new homepage. The previous version is at
http://127.0.0.1:8765/_archive/2026-09-18/ . Press Ctrl+C or close the window
to stop the server. If the port is already in use by this preview, open the
link instead of starting another instance. Run the launcher again after a
restart; local preview URLs need a running server.

The launcher uses the bundled Codex Python runtime when present, falling back
to `python` on PATH. It serves only on this computer's loopback interface.

## Content and maintenance

- `index.html`: biography, publication, experience, projects, and resource links.
- `assets/site.css`: responsive typography and layout.
- `cv.pdf`: two-page CV copied unchanged from `Downloads/Zhuoyan_Yu_CV_TwoPages_v3.pdf` (supplied September 21, 2026).
- `resume.pdf`: one-page resume copied unchanged from `Downloads/Zhuoyan_Yu_CV_OnePage_v3.pdf` (supplied September 21, 2026).

The user-supplied v3 PDFs are the current content reference; the older files in
`Summer2026/Resume/` are not the latest versions. The homepage summarizes the
new RepoRevive work and updated LLM test evaluation cohort from v3.
- `CodeFORGE.pdf` and `mygo-report.pdf`: original public research attachments.

Update dates and content alongside the source resume. Preserve publication
author lists and verified venues/status. Ongoing research is separate from
publications. Keep evaluation qualifiers when reporting results. Internal
internship metrics are not reproduced in the homepage summary. The CV and
resume are linked without altering their contents.

## Images and provenance

- `assets/codeforge-preview.png`: Figure 1, page 1 of `CodeFORGE.pdf`.
- `assets/codeforge-framework.png`: Figure 2, page 4 of `CodeFORGE.pdf`.
- `assets/mygo-comparison.png`: Figure 3, page 6 of `mygo-report.pdf` (caption excluded).
- `assets/figure-transcription.svg`: original schematic based on the September 9
  resume project description, labeled as a method illustration.

Paper figures are rendered directly from the PDFs, preserving labels and content.
This original implementation takes inspiration from the compact research
presentation on Jon Barron's homepage; no template code was copied.

## Previous version

`_archive/2026-09-18/` preserves all four original site files, with SHA-256
checksums and restoration instructions. `_config.yml` excludes it from GitHub
Pages. `.preview/` is local-only and ignored by Git. Do not add `.nojekyll`
without deciding how to exclude the archive from deployment.

`_archive/2026-09-21-before-cv-v3/` also preserves the homepage, both linked PDFs,
and maintenance notes immediately before the v3 update, with SHA-256 checksums.

## Custom domain: zhuoyanyu.com

The domain was purchased through Cloudflare on September 21, 2026. The website
stays in this repository on GitHub Pages; Cloudflare manages registration and DNS.
The redesigned homepage and v3 PDFs were published on September 21, 2026.
`CNAME`, the canonical URL, and Open Graph URLs use `https://zhuoyanyu.com/`.

- GitHub account Settings → Pages: ownership of `zhuoyanyu.com` is verified.
  Keep the `_github-pages-challenge-zhuoyan-yu` TXT record in Cloudflare.
- Repository Settings → Pages: custom domain `zhuoyanyu.com`, publishing from
  `main` / root, with **Enforce HTTPS** enabled.
- Cloudflare uses the following records with TTL Auto and **DNS only**.
  Preserve the verification TXT record and any unrelated records; do not add
  wildcard records.

   | Type | Name | Content |
   | --- | --- | --- |
   | A | @ | 185.199.108.153 |
   | A | @ | 185.199.109.153 |
   | A | @ | 185.199.110.153 |
   | A | @ | 185.199.111.153 |
   | CNAME | www | zhuoyan-yu.github.io |

Verified live: the HTTPS homepage loads, HTTP and the old github.io homepage
redirect to it, every local asset and PDF link returns HTTP 200, and both CV
downloads match their source PDFs byte for byte. The archive and this README
return HTTP 404 on the published site. Desktop and 390px layouts were checked.
The `www` record is visible through public DNS; its HTTPS certificate is still
being checked after the initial setup.

To publish future changes, commit and push to `main`; GitHub Pages builds the
site automatically. Keep `CNAME` and `_config.yml` in place. Cloudflare does not
need to be changed when editing homepage content. Update the website address in
the current editable resume source when available; the supplied v3 PDFs remain
unchanged, and their old homepage link redirects to the new domain.

Official guides:
- https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site
- https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/verifying-your-custom-domain-for-github-pages
