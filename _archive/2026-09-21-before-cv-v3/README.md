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
- `cv.pdf`: full CV copied from `Summer2026/Resume/cv_full.pdf` (September 9, 2026).
- `resume.pdf`: one-page resume copied from `Summer2026/Resume/resume_onepage.pdf` (September 9, 2026).
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

## Custom domain, when purchased

The website can stay in this repository when its public address changes.

1. Register a domain and keep its registration renewed.
2. In GitHub account Settings → Pages, verify ownership using the TXT record
   GitHub supplies. Keep the verification record in place.
3. In this repository's Settings → Pages → Custom domain, enter the chosen
   hostname and save before adding the routing DNS records.
4. At the DNS provider, point `www` via CNAME to `zhuoyan-yu.github.io` (no
   `https://` or repository path). For the bare domain, use ALIAS/ANAME to that
   hostname or the current GitHub Pages A records.
5. Wait for DNS and the certificate, enable Enforce HTTPS, then check both the
   bare domain and `www`. GitHub documents propagation and certificate setup as
   potentially taking up to 24 hours each.
6. Update canonical and Open Graph URLs in `index.html` and the address in your
   resume source. If GitHub created a CNAME commit, pull it before your next push.

No custom-domain settings or DNS changes were made during this redesign.

Official guides:
- https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site
- https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/verifying-your-custom-domain-for-github-pages
