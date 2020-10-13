# Atari800 dev

A set of preconfigured tools and tips to make creating games and applications for Atari800 easier (or possible at all) on PC.
It's designed to work on Linux (Ubuntu 20.04 to be more precise) but all tools should be available on Windows as well.

I'm new to Atari programming and this project is a result of me trying to get started. There's little to none info for complete beginners on what to do so I've decided to make a detailed instruction set.

## General instructions

Each subdirectory in this repository is meant to be copied and used as a skeleton project for VisualStudioCode.

### Tools

* [Visual Studio Code](https://code.visualstudio.com/) to write code.
* [Atari800 Emulator](https://atari800.github.io/) to run programs on PC. I'll assume it's available to via CLI.
* [Atari-tools](https://github.com/jhallen/atari-tools) to manipulate .atr images.

### Workflow

All languages follow the same steps:

1. Write the code on a PC using VSCode
1. Compile to executable (when needed and available)
1. Create an .atr image with final file
1. Boot emulation using that image to run the program

### Moving software to real Atari

Each language will have its specific actions described but there are typically two possibilities:

* Use some sort of SIO2SD and copy final program to SD card and run it on Atari
* Create .atr file with the final program; use ATR2CAS to make a wave file and finally record that file to a cassette and boot from it.

## Per-language instructions

* [Atari BASIC](AtariBASIC/README.mc)

## Knowledge sources

All the places I've gained my knowledge from.
