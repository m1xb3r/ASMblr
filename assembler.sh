#!/bin/bash
fileName="${1%%.*}" # remove .s extension

if [ "$2" == "-g" ]; then
    # Compile with debug info when -g is specified
    nasm -f elf64 -F dwarf -g "${fileName}.s" -o "${fileName}.o"
    ld -g "${fileName}.o" -o "${fileName}"
    gdb -q "${fileName}"
else
    # Normal compilation without debug info
    nasm -f elf64 "${fileName}.s" -o "${fileName}.o"
    ld "${fileName}.o" -o "${fileName}"
    ./"${fileName}"
fi