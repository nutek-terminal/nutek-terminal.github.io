---
title: "Quick Start"
description: "One page summary of how to start a new Doks project."
lead: "One page summary of how to start a new Doks project."
date: 2020-11-16T13:59:39+01:00
lastmod: 2020-11-16T13:59:39+01:00
draft: false
images: []
menu:
  docs:
    parent: "prologue"
weight: 110
toc: true
---

## Requirements

* [Docker ![🐳](/images/whale.svg)](https://www.docker.com/) —
the one and only original and the pioneer of the contenerization
technology

or

* [Podman ![🦭](/images/seal.svg)](https://podman.io/) —
viable alternative. Simply put: alias docker=podman.

{{< details "Why containers?" >}}
Nutek Terminal started as a spin-off of Kali Linux run in Docker
[nutek-core]({{< relref "nutek-versions" >}}), after all I want to
have my own __GNU/Linux__ distribution, or just a _Fedora_ spin.
{{< /details >}}

## Start a new Nutek Terminal container

It's really easy if you have _Docker_ already, it's just a matter
of few `GiB`, currently `1.75 GB` for `nutek-cent`. I know you might have
a 🐢 slow connection, but it's not that bad, you can download once and
have as many containers as you wish. I will show you that in just a moment.

### Pull Nutek Terminal image from the registry

First of all, you need to have an image. They are available on the [Docker Hub](https://hub.docker.com/u/neosb), and the ones you're looking for is:

* `nutek-cent` - CentOS Stream 9 based image introduced recently, as a
replacement to previous based on `Debian`. It has lot less tools and is
much more slim than `nutek-core`. You might try it, if you're just strartig
out and want to look how the things work.

```bash
docker pull neosb/nutek-cent
# or
podman pull neosb/nutek-cent
```

* `nutek-core` - [description]({{< relref nutek-versions >}}#nutek-core)

```bash
docker pull neosb/nutek-core
# or
podman pull neosb/nutek-core
```

### Create a new container

The easiest way to start, but only to look around what's in there...

```bash
docker run -it neosb/nutek-cent
```

This command will simply start a new `nutek-cent` container, but no ports
and no folders will be attached to this container.

To attach ports and add folder which you can access from container write
this in your terminal:

```bash
# You can repeat -v and -p as many times you want
docker run -it -h nutek-terminal -v /Users/maria/nutek:/root/nutek -p 8080:8080 neosb/nutek-cent
```

* The `-h` argument changes the hostname of container to _nutek-terminal_
* `-v` argument attaches the `/Users/maria/nutek` folder to container - __WARNIG!__ - you have to enable sharing certain folders in Docker app
* Finnaly `-p` argument attaches port 8080 from host machine (you - the first part) to the 8080 port in the container.

### Attach to session

```bash
docker exec -it container_name /bin/zsh
```

### Start previosly stopped container

```bash
docker start -i container_name
```

### List all containers

```bash
docker ps -a
```
