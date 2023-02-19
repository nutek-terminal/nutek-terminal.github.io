---
title: "Nutek Versions"
description: "Nutek Terminal versions that are available to run. You can try any of them, they are open-source and battle ready."
lead: "Nutek Terminal versions that are available to run. You can try any of them, they are open-source and battle ready."
date: 2023-02-18T21:59:42+01:00
lastmod: 2023-02-18T21:59:42+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "nutek-versions-fd432a905f2394ef380f09241f69323b"
weight: 999
toc: true
---

## Nutek Terminal versions

### nutek-cent

`CentOS Stream 9` based image, which is ment to be just a starting point in
a journey into `Red Hat` world. Since the tooling and packeges for this
system are greatly reduced, I'm currently working on creating `Fedora 37`
based image with all the things you might want. This image is intended to
be the base for your additional work in a `Dockerfile`. This image is aiming
more at developers, who whish to check their code on the battlefield, than
at you my fellow hacker, but if you add your changes to this system, you
might tailor it to your liking. Anyway, stay tuned for the arrival of `nutek-fedsec`.

#### Blog article about nutek-cent

I have described most of this version in my recent [blog post]({{< relref "nutek-cent-available" >}})

#### Extend the image

Create a `Dockerfile` with this at the beginning:

```Dockerfile
FROM neosb/nutek-cent:latest
# Your additions goes under this line. Happy coding!
# EXAMPLE:
RUN dnf install -y clang
```

The source code for `nutek-cent` is on [GitHub](https://github.com/nutek-terminal/nutek-cent/)

### nutek-core

`Kali Linux` based image. This is how it all started. First I have installed
many, many, many packages, and then I sterted to reduce the size of the
image. At the end, I realized that it might not be what I want, thus I you
might pick up my work and safely extend it how _you_ want, I do not intend
to be supporting this version, I only include it here as a reference for
any of your future hacking activities.

![showcase](https://storage.googleapis.com/neosb/static/nutek-terminal.png)

Source code for `nutek-core` along with friends, `nutek-base` and
`nutek-code` is on [GitHub](https://github.com/nutek-terminal/nutek-core)
as well.
