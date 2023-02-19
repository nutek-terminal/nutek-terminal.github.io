---
title: "Fmt"
description: ""
lead: ""
date: 2023-02-16T08:49:22+01:00
lastmod: 2023-02-16T08:49:22+01:00
draft: false
images: []
menu:
  docs:
    parent: "code"
    identifier: "fmt-f361ef86160f6c223bba3173b457fa54"
weight: 999
toc: true
---


## Description

fmt is a small, safe and fast formatting library providing a fast and safe alternative to C printf and C++ iostreams.

## Installation

```bash
brew install fmt
```

## Usage

```c++
std::string s = fmt::format("The answer is {}.", 42);
```

## Resources

- [fmt](https://fmt.dev/latest/index.html)
- [fmt User Guide](https://fmt.dev/latest/index.html)
- [fmt API](https://fmt.dev/latest/api.html)

## Similar

- stdio
- iostreams
- printf
