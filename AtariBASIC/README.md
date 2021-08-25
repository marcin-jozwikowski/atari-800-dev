# Atari800 dev - Atari BASIC

Write your code in this directory and press Ctrl+Shift+B to run in emulator and type `RUN` to execute the program.

Build task will copy currently open file to h1_drive directory and run Atari800 with a prepared ATR disk image. This image loads the copied file via emualted hard-drive.

## Autostart the program

* By default build process only loads the program to emulators memory. Edit `tools/build.sh` file by uncommenting two `echo` commands to enable program autostart.

## Knowledge sources

* [Basic autorun [PL]](http://www.atari.org.pl/forum/viewtopic.php?id=13898) - detailed instructions on how to make an .atr image with BASIC program autoload. One of images presented in this post is a basis of build process.
* [Running BAS files on enter](http://archive.org/stream/1988-04-compute-magazine/Compute_Issue_095_1988_Apr#page/n73/mode/2up) - this articule gave me a solution on how to autorun antokenized BAS files.
