---
title: "Jql"
description: ""
lead: ""
date: 2023-02-16T08:49:34+01:00
lastmod: 2023-02-16T08:49:34+01:00
draft: false
images: []
menu:
  docs:
    parent: "utility"
    identifier: "jql-4eea99904ef5d3562e2b8a068b002e48"
weight: 999
toc: true
---


## Description

JQL is a command-line tool for querying JSON data. It is similar to jq, but with a more SQL-like syntax.

## install

```bash
brew install jql
```

## sample usage

```bash
jql '.' example.json
```

```json
    {
    "some": {
        "property": "value"
    }
    }
```

```bash
jql '"some"."property"' example.json
```

### sample output

```json
value
```

## help

```text
A JSON query language CLI tool

Usage: jql [OPTIONS] [selectors] [JSON]

Arguments:
  [selectors]  Selectors to apply
  [JSON]       JSON file to use

Options:
  -c, --check             Checks if the input is valid JSON
  -f, --from-file <FILE>  Reads selectors from file rather than from a command line
  -i, --inline            Inlines JSON output
  -r, --raw-output        Writes raw string selection directly to standard output without JSON double-quotes
  -s, --stream            Reads a stream of JSON data line by line
  -h, --help              Print help
  -V, --version           Print version
```
