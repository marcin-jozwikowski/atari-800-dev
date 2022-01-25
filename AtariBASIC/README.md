# Atari800 dev - Atari BASIC

## Instructions

Write your code in this directory and press Ctrl+Shift+B and select `load` to load opened file into emulator and type `RUN` to execute the program.

Select `load and run` to automaticaly issue the `RUN` command.

Build task will copy currently open file to h1_drive directory and run `atari800` with a prepared ATR disk image. This image loads the copied file via emualted hard-drive.

## Extensions

My own `MarcinJozwikowski.atari-basic` is recommended to provide AtariBasic syntax highlighting.

## Knowledge sources

* [Basic autorun [PL]](http://www.atari.org.pl/forum/viewtopic.php?id=13898) - detailed instructions on how to make an .atr image with BASIC program autoload. One of images presented in this post is a basis of build process.
* [Running BAS files on enter](http://archive.org/stream/1988-04-compute-magazine/Compute_Issue_095_1988_Apr#page/n73/mode/2up) - this articule gave me a solution on how to autorun antokenized BAS files.
