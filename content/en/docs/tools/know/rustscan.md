---
title: "Rustscan"
description: ""
lead: ""
date: 2023-02-16T08:49:27+01:00
lastmod: 2023-02-16T08:49:27+01:00
draft: false
images: []
menu:
  docs:
    parent: "know"
    identifier: "rustscan-d673526b34f8b675063239be005632c0"
weight: 999
toc: true
---


## Description

RustScan is a modern port scanner written in Rust. It is designed to be fast and easy to use. I

## install

```bash
brew install rustscan
```

## Usage

```bash
rustscan -
```

## References

- [Wiki](https://github.com/RustScan/RustScan/wiki)
- [GitHub](https://github.com/RustScan/RustScan)

## See also

- [nmap](./nmap.md)
- [masscan](./masscan.md)
- [p0f](./p0f.md)

## help

```text
rustscan 2.1.1
Fast Port Scanner built in Rust. WARNING Do not use this program against sensitive infrastructure since the specified
server may not be able to handle this many socket connections at once. - Discord https://discord.gg/GFrQsGy - GitHub
https://github.com/RustScan/RustScan

USAGE:
    rustscan [FLAGS] [OPTIONS] [-- <command>...]

FLAGS:
        --accessible    Accessible mode. Turns off features which negatively affect screen readers
    -g, --greppable     Greppable mode. Only output the ports. No Nmap. Useful for grep or outputting to a file
    -h, --help          Prints help information
    -n, --no-config     Whether to ignore the configuration file or not
        --top           Use the top 1000 ports
    -V, --version       Prints version information

OPTIONS:
    -a, --addresses <addresses>...     A comma-delimited list or newline-delimited file of separated CIDRs, IPs, or
                                       hosts to be scanned
    -b, --batch-size <batch-size>      The batch size for port scanning, it increases or slows the speed of scanning.
                                       Depends on the open file limit of your OS.  If you do 65535 it will do every port
                                       at the same time. Although, your OS may not support this [default: 4500]
    -c, --config-path <config-path>    Custom path to config file
    -p, --ports <ports>...             A list of comma separed ports to be scanned. Example: 80,443,8080
    -r, --range <range>                A range of ports with format start-end. Example: 1-1000
        --scan-order <scan-order>      The order of scanning to be performed. The "serial" option will scan ports in
                                       ascending order while the "random" option will scan ports randomly [default:
                                       serial]  [possible values: Serial, Random]
        --scripts <scripts>            Level of scripting required for the run [default: default]  [possible values:
                                       None, Default, Custom]
    -t, --timeout <timeout>            The timeout in milliseconds before a port is assumed to be closed [default: 1500]
        --tries <tries>                The number of tries before a port is assumed to be closed. If set to 0, rustscan
                                       will correct it to 1 [default: 1]
    -u, --ulimit <ulimit>              Automatically ups the ULIMIT with the value you provided

ARGS:
    <command>...    The Script arguments to run. To use the argument -A, end RustScan's args with '-- -A'. Example:
                    'rustscan -T 1500 -a 127.0.0.1 -- -A -sC'. This command adds -Pn -vvv -p $PORTS automatically to
                    nmap. For things like --script '(safe and vuln)' enclose it in quotations marks \"'(safe and
                    vuln)'\"")
```bash
