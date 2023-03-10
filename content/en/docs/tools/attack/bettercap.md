---
title: "Bettercap"
description: ""
lead: ""
date: 2023-02-16T08:49:19+01:00
lastmod: 2023-02-16T08:49:19+01:00
draft: false
images: []
menu:
  docs:
    parent: "attack"
    identifier: "bettercap-c83ff48e2f93ccb4e567db2af2f0c420"
weight: 999
toc: true
---


## Description

Bettercap is a complete, modular, portable and easily extensible MITM framework with every kind of diagnostic and offensive feature you could need in order to perform a man in the middle attack.

## install

```bash
brew install bettercap
```

==> Caveats
bettercap requires root privileges so you will need to run `sudo bettercap`.
You should be certain that you trust any software you grant root privileges.

## sample usage

```bash
bettercap -h
```

## help

```text
Usage of bettercap:
  -autostart string
        Comma separated list of modules to auto start. (default "events.stream")
  -caplet string
        Read commands from this file and execute them in the interactive session.
  -caplets-path string
        Specify an alternative base path for caplets.
  -cpu-profile file
        Write cpu profile file.
  -debug
        Print debug messages.
  -env-file string
        Load environment variables from this file if found, set to empty to disable environment persistence.
  -eval string
        Run one or more commands separated by ; in the interactive session, used to set variables via command line.
  -gateway-override string
        Use the provided IP address instead of the default gateway. If not specified or invalid, the default gateway will be used.
  -iface string
        Network interface to bind to, if empty the default interface will be auto selected.
  -mem-profile file
        Write memory profile to file.
  -no-colors
        Disable output color effects.
  -no-history
        Disable interactive session history file.
  -pcap-buf-size int
        PCAP buffer size, leave to 0 for the default value. (default -1)
  -script string
        Load a session script.
  -silent
        Suppress all logs which are not errors.
  -version
        Print the version and exit.
```bash
