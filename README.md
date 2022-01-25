# Atari800 dev

A set of preconfigured tools and tips to make creating games and applications for Atari800 easier (or possible at all) on PC.
It's designed to work on Linux (Ubuntu 20.04 to be more precise) but all tools should be available on Windows as well.

I'm new to Atari programming and this project is a result of me trying to get started. There's little to none info for complete beginners on what to do so I've decided to make a detailed instruction set.

## General instructions

Each subdirectory in this repository is meant to be copied and used as a skeleton project for VisualStudioCode.

### Tools

* [Visual Studio Code](https://code.visualstudio.com/) to write code.
* [Atari800 Emulator](https://atari800.github.io/) to run programs on PC.
* [Altirra Emulator](https://www.virtualdub.org/altirra.html) to easily debug programs. It works quite fine under WINE.
* [Atari-tools](https://github.com/jhallen/atari-tools) to manipulate .atr images.

### Pre-requisites

#### Emulation

I'm assuming that `altirra` is available as a command or an alias via CLI. If not `atari800` is being used as a fallback.

You can create those aliases/commands or just edit the scritps in `./tools/` to match your local configuration.

#### Pluging

Visit the `Extensions` tab of your VSCode and search for `@recommended` to see and install plugins recommended for each language.


### Workflow

All languages follow the same steps:

1. Write the code on a PC using VSCode
1. Compile to executable (when needed and available)
1. Boot emulation using output to run the program

### Moving software to real Atari

Each language might have its specific actions described but there are typically two possibilities:

* Use some sort of SIO2SD and copy final program to SD card and run it on Atari
* Create .atr file with the final program; use ATR2CAS to make a wave file and finally record that file to a cassette and boot from it.

## Per-language instructions

* [Atari BASIC](./AtariBASIC/)
* [ATasm](./ATasm/)
* [MADS](./MADS/)

## Knowledge sources

Each language has its own links set.

Since I'm Polish and Polish Atari community is very active and supportive many of links in these sections are in Polish. Use Google Translate.
