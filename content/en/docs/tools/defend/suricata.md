---
title: "Suricata"
description: ""
lead: ""
date: 2023-02-16T08:49:23+01:00
lastmod: 2023-02-16T08:49:23+01:00
draft: false
images: []
menu:
  docs:
    parent: "defend"
    identifier: "suricata-b83d020492f1b6ec3882b4bab9295b24"
weight: 999
toc: true
---


## Description

Suricata is a network IDS, IPS and NSM engine. It can perform real-time intrusion detection (IDS), inline intrusion prevention (IPS), network security monitoring (NSM) and offline pcap processing.

## Install

```bash
brew install suricata
```bash

## Sample Usage

```bash
suricata -c /usr/local/etc/suricata/suricata.yaml -i en0
```bash

## website

[https://suricata.io](https://suricata.io)
