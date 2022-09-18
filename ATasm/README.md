# Atari800 dev - ATasm

## Instructions

This workspace is mainly based on `cerebus.atasm-altirra-bridge` plugin. It's [homepage](https://marketplace.visualstudio.com/items?itemName=cerebus.atasm-altirra-bridge) will give you all instructions you'll need.

To change file being compiled modify `atasm-build.json` file - precisely the `input` field.

## Extensions

The `cerebus.atasm-altirra-bridge` is obviusly needed since no build command is being introduced into this workspace.

## Emulation under Ubuntu

For running altirra emulator under Ubuntu I recommend installing it under WINE and changing appropriate paths in `./tools/run.sh`. The default is a `C:\Altirra` in `~/.wine/altirra` WINEPREFIX. Uncomment line marked `Altirra under Ubuntu` in `.vscode/settings.json` to use it.

For running atari800 use value marked `atari800 under Ubuntu` in `.vscode/settings.json`.

## Emulation under Windows

Atasm Altirra Bridge comes with Altirra already built in and working without any changes required.

To run atari800 use value marked `atari800 under Windows` in `.vscode/settings.json`.