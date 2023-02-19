---
title: "How to Update"
description: "Regularly update the installed Docker images to keep your Nutek Termina stable, usable, and secure."
lead: "Regularly update the installed Docker images to keep your Nutek Termina stable, usable, and secure."
date: 2020-11-12T13:26:54+01:00
lastmod: 2020-11-12T13:26:54+01:00
draft: false
images: []
menu:
  docs:
    parent: "help"
weight: 610
toc: true
---

## Check your version of nutek image

The current way to use Nutek Terminal is through _Docker_, or _Podman_.

To update you version of image you will simply use pull command. Like that:

__nutek-core__:

```bash
docker pull neosb/nutek-core
# or with podman
podman pull neosb/nutek-core
```

__nutek-cent__:

```bash
docker pull neosb/nutek-cent
# or with podman
podman pull neosb/nutek-cent
```

If you already have created any nutek container, you would have to stop
using them, or simply delete them, because you can't update the underyling
image that is used by container. Of course, you can just start a new one.

### Update to specific version

The `pull` command allows also to download a specific image version with
addaing `:0.1.0` for example, or you can default to always use the latest
image version with `:latest`.

```bash
# append to the neosb/nutek-*
neosb/nutek-cent:0.1.0
```

You can also ommit using the `pull` command with just specifying what image you want to run:

```bash
docker run --rm -it neosb/nutek-core:latest
```
