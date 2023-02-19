---
title: "Bottom"
description: ""
lead: ""
date: 2023-02-16T08:49:30+01:00
lastmod: 2023-02-16T08:49:30+01:00
draft: false
images: []
menu:
  docs:
    parent: "utility"
    identifier: "bottom-d915826627eefd7aebd32a0af16ded8b"
weight: 999
toc: true
---


## Description

bottom is a cross-platform graphical process/system monitor with a customizable interface and a multitude of features.

## Installation

```bash
brew install bottom
```

## Usage

```bash
btm
```

## Resources

- [bottom](https://clementtsang.github.io/bottom/)```

## help

```text
bottom 0.8.0
Clement Tsang <cjhtsang@uwaterloo.ca>

A customizable cross-platform graphical process/system monitor for the terminal.
Supports Linux, macOS, and Windows.

USAGE:
    btm [FLAG]

FLAGS:
    -a, --hide_avg_cpu
            Hides the average CPU usage from being shown.

        --autohide_time
            Automatically hides the time scale in graphs after being shown for a
            brief moment when zoomed in/out. If time is disabled via --hide_time
            then this will have no effect.

    -b, --basic
            Hides graphs and uses a more basic look. Design is largely inspired
            by htop's.

        --battery
            Shows the battery widget in default or basic mode. No effect on
            custom layouts.

    -c, --celsius
            Sets the temperature type to Celsius. This is the default option.

    -C, --config <CONFIG PATH>
            Sets the location of the config file. Expects a config file in the
            TOML format. If it doesn't exist, one is created.

        --color <COLOR SCHEME>
            Use a pre-defined color scheme. Currently supported values are:
            
            +------------------------------------------------------------+
            | default                                                    |
            +------------------------------------------------------------+
            | default-light (default but for use with light backgrounds) |
            +------------------------------------------------------------+
            | gruvbox (a bright theme with 'retro groove' colors)        |
            +------------------------------------------------------------+
            | gruvbox-light (gruvbox but for use with light backgrounds) |
            +------------------------------------------------------------+
            | nord (an arctic, north-bluish color palette)               |
            +------------------------------------------------------------+
            | nord-light (nord but for use with light backgrounds)       |
            +------------------------------------------------------------+
            
            Defaults to "default".

    -d, --time_delta <MS>
            The amount of time in milliseconds changed when zooming in/out. The
            minimum is 1s (1000), and defaults to 15s (15000).

        --default_widget_count <INT>
            Sets the n'th selected widget type to use as the default widget.
            Requires 'default_widget_type' to also be set, and defaults to 1.
            
            This reads from left to right, top to bottom. For example, suppose
            we have a layout that looks like:
            +-------------------+-----------------------+
            |      CPU (1)      |        CPU (2)        |
            +---------+---------+-------------+---------+
            | Process | CPU (3) | Temperature | CPU (4) |
            +---------+---------+-------------+---------+
            
            And we set our default widget type to 'CPU'. If we set
            '--default_widget_count 1', then it would use the CPU (1) as
            the default widget. If we set '--default_widget_count 3', it would
            use CPU (3) as the default instead.

        --default_widget_type <WIDGET TYPE>
            Sets which widget type to use as the default widget.
            For the default layout, this defaults to the 'process' widget.
            For a custom layout, it defaults to the first widget it sees.
            
            For example, suppose we have a layout that looks like:
            +-------------------+-----------------------+
            |      CPU (1)      |        CPU (2)        |
            +---------+---------+-------------+---------+
            | Process | CPU (3) | Temperature | CPU (4) |
            +---------+---------+-------------+---------+
            
            Setting '--default_widget_type Temp' will make the Temperature
            widget selected by default.
            
            Supported widget names:
            +--------------------------+
            |            cpu           |
            +--------------------------+
            |        mem, memory       |
            +--------------------------+
            |       net, network       |
            +--------------------------+
            | proc, process, processes |
            +--------------------------+
            |     temp, temperature    |
            +--------------------------+
            |           disk           |
            +--------------------------+
            |       batt, battery      |
            +--------------------------+

        --disable_advanced_kill
            Hides advanced options to stop a process on Unix-like systems. The
            only option shown is 15 (TERM).

        --disable_click
            Disables mouse clicks from interacting with the program.

    -e, --expanded
            Expand the default widget upon starting the app. Same as pressing
            "e" inside the app. Use with "default_widget_type" and
            "default_widget_count" to select desired expanded widget. This flag
            has no effect in basic mode (--basic)

        --enable_gpu_memory
            Enable collecting and displaying GPU memory usage.

    -f, --fahrenheit
            Sets the temperature type to Fahrenheit.

    -g, --group
            Groups processes with the same name by default.

    -h, --help
            Prints help information. Use --help for info.

        --hide_table_gap
            Hides the spacing between table headers and entries.

        --hide_time
            Completely hides the time scale from being shown.

    -k, --kelvin
            Sets the temperature type to Kelvin.

    -l, --left_legend
            Puts the CPU chart legend to the left side rather than the right
            side.

    -m, --dot_marker
            Uses a dot marker for graphs as opposed to the default braille
            marker.

        --mem_as_value
            Defaults to showing process memory usage by value. Otherwise, it
            defaults to showing it by percentage.

    -n, --unnormalized_cpu
            Shows process CPU usage without averaging over the number of CPU
            cores in the system.

        --network_use_binary_prefix
            Displays the network widget with binary prefixes (i.e. kibibits,
            mebibits) rather than a decimal prefix (i.e. kilobits, megabits).
            Defaults to decimal prefixes.

        --network_use_bytes
            Displays the network widget using bytes. Defaults to bits.

        --network_use_log
            Displays the network widget with a log scale. Defaults to a non-log
            scale.

        --process_command
            Show processes as their commands by default in the process widget.

    -r, --rate <MS>
            Sets a refresh rate in milliseconds. The minimum is 250ms, and
            defaults to 1000ms. Smaller values may take more computer resources.

    -R, --regex
            When searching for a process, enables regex by default.

        --retention <time>
            How much data is stored at once in terms of time. Takes in human-
            readable time spans (e.g. 10m, 1h), with a minimum of 1 minute. Note
            higher values will take up more memory. Defaults to 10 minutes.

    -S, --case_sensitive
            When searching for a process, enables case sensitivity by default.

        --show_table_scroll_position
            Shows the list scroll position tracker in the widget title for table
            widgets.

    -t, --default_time_value <MS>
            Default time value for graphs in milliseconds. The minimum time is
            30s (30000), and the default is 60s (60000).

    -T, --tree
            Defaults to showing the process widget in tree mode.

    -u, --current_usage
            Sets process CPU% usage to be based on the current system CPU% usage
            rather than total CPU usage.

        --use_old_network_legend
            DEPRECATED - uses an older (pre-0.4), separate network widget
            legend. This display is not tested anymore and could be broken.

    -V, --version
            Prints version information.

    -W, --whole_word
            When searching for a process, return results that match the entire
            query by default.
```
