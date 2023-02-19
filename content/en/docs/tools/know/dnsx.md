---
title: "Dnsx"
description: ""
lead: ""
date: 2023-02-16T08:49:24+01:00
lastmod: 2023-02-16T08:49:24+01:00
draft: false
images: []
menu:
  docs:
    parent: "know"
    identifier: "dnsx-a1a2cbcbf8a4cb4384c328f73efdb7ac"
weight: 999
toc: true
---


## Description

dnsx is a fast and multi-purpose DNS toolkit designed for running various probes through the retryabledns library. It supports multiple DNS queries, user supplied resolvers, DNS wildcard filtering like shuffledns etc.

## install

```bash
brew install dnsx
```

## sample usage

```bash
echo 69.52.0.0/16 | dnsx -silent -resp-only -ptr
```

### sample output

```text
www.origina.blackrock.com
e-confirm.blackrock.com
www.blackrocksolutions.com
ftp.blackrock.com
```

## help

```text
dnsx is a fast and multi-purpose DNS toolkit allow to run multiple probes using retryabledns library.

Usage:
  dnsx [flags]

Flags:
INPUT:
   -stream               stream mode (wordlist, wildcard, stats and stop/resume will be disabled)
   -l, -list string      list of sub(domains)/hosts to resolve (file or stdin)
   -d, -domain string    list of domain to bruteforce (file or comma separated or stdin)
   -w, -wordlist string  list of words to bruteforce (file or comma separated or stdin)
QUERY:
   -a      query A record (default)
   -aaaa   query AAAA record
   -cname  query CNAME record
   -ns     query NS record
   -txt    query TXT record
   -ptr    query PTR record
   -mx     query MX record
   -soa    query SOA record
FILTERS:
   -resp               display dns response
   -resp-only          display dns response only
   -rcode, -rc string  filter result by dns status code (eg. -rcode noerror,servfail,refused)
RATE-LIMIT:
   -t, -c int            number of concurrent threads to use (default 100)
   -rl, -rate-limit int  number of dns request/second to make (disabled as default) (default -1)
OUTPUT:
   -o, -output string  file to write output
   -json               write output in JSONL(ines) format
DEBUG:
   -silent       display only results in the output
   -v, -verbose  display verbose output
   -raw, -debug  display raw dns response
   -stats        display stats of the running scan
   -version      display version of dnsx
OPTIMIZATION:
   -retry int                number of dns retries to make (default 2)
   -hf, -hostsfile           use system host file
   -trace                    perform dns tracing
   -trace-max-recursion int  Max recursion for dns trace (default 32767)
   -flush-interval int       flush interval of output file (default 10)
   -resume                   resume existing scan
CONFIGURATIONS:
   -r, -resolver string          list of resolvers to use (file or comma separated)
   -wt, -wildcard-threshold int  wildcard filter threshold (default 5)
   -wd, -wildcard-domain string  domain name for wildcard filtering (other flags will be ignored)
```bash
