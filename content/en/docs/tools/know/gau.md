---
title: "Gau"
description: ""
lead: ""
date: 2023-02-16T08:49:25+01:00
lastmod: 2023-02-16T08:49:25+01:00
draft: false
images: []
menu:
  docs:
    parent: "know"
    identifier: "gau-bda2e57c28893e1758fd4f9f2203e582"
weight: 999
toc: true
---
# gau

## Description

gau is a simple tool for scraping URLs from a given domain. It is a wrapper around [Wayback Machine](https://archive.org/web/) and [Common Crawl](https://commoncrawl.org/).

## Installation

```bash
brew install gau
```

## Usage

```bash
gau example.com
```

## Resources

- [gau](https://github.com/lc/gau)

## help

```bash
Usage of gau:
      --blacklist strings   list of extensions to skip
      --fc strings          list of status codes to filter
      --fp                  remove different parameters of the same endpoint
      --from string         fetch urls from date (format: YYYYMM)
      --ft strings          list of mime-types to filter
      --json                output as json
      --mc strings          list of status codes to match
      --mt strings          list of mime-types to match
      --o string            filename to write results to
      --providers strings   list of providers to use (wayback,commoncrawl,otx,urlscan)
      --proxy string        http proxy to use
      --retries uint        retries for HTTP client
      --subs                include subdomains of target domain
      --threads uint        number of workers to spawn (default 1)
      --timeout uint        timeout (in seconds) for HTTP client (default 45)
      --to string           fetch urls to date (format: YYYYMM)
      --verbose             show verbose output
      --version             show gau version
```