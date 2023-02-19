---
title: "Nutek Cent Available"
description: "The latest docker image is here. Look further no more."
excerpt: "The latest docker image is here. Look further no more."
date: 2023-01-28T05:26:56+01:00
lastmod: 2023-01-28T05:26:56+01:00
draft: false
weight: 50
images: []
categories: ["News"]
tags: ["docker", "new", "centos", "cybersecurity", "programming"]
contributors: ["Szymon Błaszczyński"]
pinned: false
homepage: false
---

## nutek-cent is here!

Based on reliable Centos Stream 9 Linux distribution, I prodly annonce
the fresh member of Nutek 😺 family - `nutek-cent`. Get it from Docker Hub
now, and start your hacking journey with the best of the best. [Continue to image →](https://hub.docker.com/r/neosb/nutek-cent)

Fully equiped, but slimmer than `nutek-core`, this image provides
stability of _Enterprise Linux_ in Docker container format. It contains
security and hacking tools, as well as development packages making it
very good companion, or too big (7 GB 🐢) to be true, throw away ad
hoc container. Unlike most of the other and similar images, this one is based on Centos, not Debian or Ubuntu. It's somehow similar to Fedora,
and uses the same package management system (`rpm`/`dnf`/`yum`).

You won't spend much time figuring out what's there, as the image
in defulat mode starts with a list command of most notable tools, and
this list is just programs that opens relevant portions of the web to
further explore. Don't have much time? `tldr` command included in image
provide information about key commands of particular program.

Pull the image from _Docker Hub_ with `docker pull neosb/nutek-cent`.

I do not target with this release any particular need to automate tasks,
so you will have to figure out on your own how to speed up and enhance your
cybersecurity research, and to aid you in this pursuit I kindly provided
you with many integrated compilers and interpreters, so only sky is the limit 🚀.

## List of important, included tools and utilities

### ✅ Programming

* bash
* clang
* gcc
* go
* node
* perl
* python3
* ruby
* rust
* swift
* zsh

### ✅ Development

* gdb
* git
* lldb
* make
* nginx
* nvim
* sqlite3

### ✅ Utility

* atuin
* btm
* exa
* irssi
* mdcat
* ouch
* sd
* viu
* bat
* dust
* fd
* macchina
* openvpn
* rg
* tldr
* w3m

### ✅ Hacking

* bing-search
* curl
* htmlq
* jql
* monolith
* nmap
* sqlmap
* tcpdump
* you
* feroxbuster
* hURL
* mitmproxy
* ncat
* smap
* ssh
* xhs

## Usage

```shell
# basic
docker run -it neosb/nutek-cent

# with attached folder
docker run -it -v /home/maria/nutek:/root/nutek neosb/nutek-cent

# with specific port open, e.g. for mitmproxy
docker run -it -p 8080:8080 neosb/nutek-cent

# when you already have one session started
docker exec -it container_name /bin/zsh

# when you want to start previosly stopped container
docker start -i container_name

# to list all containers
docker ps -a
```

Remember you can always delete the container and create one or two.
It's very easy with `Docker`. You don't have to be afraid that you
will break something and that you'll need to go to your nearest
repair shop. You just throw away the container and start away!
Very easy way to learn new things.

## LICENSE

```text
Copyright (c) 2023 Szymon Bronisław Błaszczyński. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

   * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
   * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
   * Neither the name of Szymon Błaszczyński (or Szymon Bronisław Błaszczyński, or Neosb) nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```
