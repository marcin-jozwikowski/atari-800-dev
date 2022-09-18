# Atari800 dev - MADS

## Instructions

This workspace is mainly based on `Using Atari800 config file: /home/mjozwikowski/.atari800.cfg
` plugin and its ability to use MADS instead of ATasm. Its [homepage](https://marketplace.visualstudio.com/items?itemName=cerebus.atasm-altirra-bridge) will give you all instructions you'll need.

To change file being compiled modify `atasm-build.json` file - precisely the `input` field.

## Extensions

The `cerebus.atasm-altirra-bridge` is obviusly needed since no build command is being introduced into this workspace.

As of version 1.7.0 the plugin stores compiler settings in User scope instead of Workspace. To bypass this issue wait for plugin update or set following values for User settings:

* `atasm-altirra-bridge.assembler.madsPath` -> "./tools/MADS_Compiler/mads" for Ubuntu
* `atasm-altirra-bridge.assembler.madsPath` -> "./tools/MADS_Compiler/mads.exe" for Windows
* `atasm-altirra-bridge.assembler.whichAssembler` -> "Mads"

## Emulation under Ubuntu

For running altirra emulator under Ubuntu I recommend installing it under WINE and changing appropriate paths in `./tools/run.sh`. The default is a `C:\Altirra` in `~/.wine/altirra` WINEPREFIX. Uncomment line marked `Altirra under Ubuntu` in `.vscode/settings.json` to use it.

For running atari800 use value marked `atari800 under Ubuntu` in `.vscode/settings.json`.

In both cases fill in the full path of your project directory.

## Emulation under Windows

Atasm Altirra Bridge comes with Altirra already built in and working without any changes required.

To run atari800 use value marked `atari800 under Windows` in `.vscode/settings.json`.

Fill in the full path of your project directory.