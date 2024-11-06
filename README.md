# ASMblr

Simple bash script to assemble, link and run x86_64 assembly programs.

## Installation
```bash
chmod +x assembler.sh
```

## Usage
Regular run:
```bash
./assembler.sh program.s
```

Debug mode:
```bash
./assembler.sh program.s -g
```

The script automatically:
1. Assembles your `.s` file with NASM
2. Links with `ld`
3. Runs the program (or starts GDB if `-g` flag used)

Requires: NASM, ld, and GDB (optional)
