---
title: "Httrack"
description: ""
lead: ""
date: 2023-02-16T08:49:25+01:00
lastmod: 2023-02-16T08:49:25+01:00
draft: false
images: []
menu:
  docs:
    parent: "know"
    identifier: "httrack-e7d41854c0e9ab16effabf5e66ceb1e1"
weight: 999
toc: true
---


## Description

httrack is a website copier. It allows you to download a website from the Internet to a local directory, building recursively all directories, getting html, images, and other files from the server to your computer. HTTrack arranges the original site's relative link-structure. Simply open a page of the "mirrored" website in your browser, and you can browse the site from link to link, as if you were viewing it online. HTTrack can also update an existing mirrored site, and resume interrupted downloads. HTTrack is fully configurable, and has an integrated help system.

## install

```bash
brew install httrack
```

## sample usage

```bash
httrack https://www.example.com
```

## help (from gist)

{{< gist buahaha 42d4a406aaaf193ea63302b99ee46b29 >}}