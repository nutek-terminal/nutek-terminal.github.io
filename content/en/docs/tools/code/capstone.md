---
title: "Capstone"
description: ""
lead: ""
date: 2023-02-16T08:49:21+01:00
lastmod: 2023-02-16T08:49:21+01:00
draft: false
images: []
menu:
  docs:
    parent: "code"
    identifier: "capstone-cfbbf24c7a287db192b361e29cac7d79"
weight: 999
toc: true
---


## Description

Capstone is a lightweight multi-platform, multi-architecture disassembly framework.

## Installation

```bash
brew install capstone
```

## Usage

```rust
extern crate capstone;

use capstone::prelude::*;

const X86_CODE: &'static [u8] = b"\x55\x48\x8b\x05\xb8\x13\x00\x00\xe9\x14\x9e\x08\x00\x45\x31\xe4";

/// Print register names
fn reg_names(cs: &Capstone, regs: &[RegId]) -> String {
    let names: Vec<String> = regs.iter().map(|&x| cs.reg_name(x).unwrap()).collect();
    names.join(", ")
}

/// Print instruction group names
fn group_names(cs: &Capstone, regs: &[InsnGroupId]) -> String {
    let names: Vec<String> = regs.iter().map(|&x| cs.group_name(x).unwrap()).collect();
    names.join(", ")
}

fn main() {
    let cs = Capstone::new()
        .x86()
        .mode(arch::x86::ArchMode::Mode64)
        .syntax(arch::x86::ArchSyntax::Att)
        .detail(true)
        .build()
        .expect("Failed to create Capstone object");

    let insns = cs.disasm_all(X86_CODE, 0x1000)
        .expect("Failed to disassemble");
    println!("Found {} instructions", insns.len());
    for i in insns.as_ref() {
        println!();
        println!("{}", i);

        let detail: InsnDetail = cs.insn_detail(&i).expect("Failed to get insn detail");
        let arch_detail: ArchDetail = detail.arch_detail();
        let ops = arch_detail.operands();

        let output: &[(&str, String)] = &[
            ("insn id:", format!("{:?}", i.id().0)),
            ("bytes:", format!("{:?}", i.bytes())),
            ("read regs:", reg_names(&cs, detail.regs_read())),
            ("write regs:", reg_names(&cs, detail.regs_write())),
            ("insn groups:", group_names(&cs, detail.groups())),
        ];

        for &(ref name, ref message) in output.iter() {
            println!("{:4}{:12} {}", "", name, message);
        }

        println!("{:4}operands: {}", "", ops.len());
        for op in ops {
            println!("{:8}{:?}", "", op);
        }
    }
}
```

## Output

```text
Found 4 instructions

0x1000: pushq %rbp
    read regs:   rsp
    write regs:  rsp
    insn groups: mode64

0x1001: movq 0x13b8(%rip), %rax
    read regs:
    write regs:
    insn groups:

0x1008: jmp 0x8ae21
    read regs:
    write regs:
    insn groups: jump

0x100d: xorl %r12d, %r12d
    read regs:
    write regs:  rflags
    insn groups:
```

## Resources

- [Capstone](http://www.capstone-engine.org/)
- [Capstone User Guide](http://www.capstone-engine.org/lang_c.html)
- [Capstone API](http://www.capstone-engine.org/lang_c.html)
- [Rust bindings GitHub](https://github.com/capstone-rust/capstone-rs)
- [crates.io](https://crates.io/crates/capstone)
