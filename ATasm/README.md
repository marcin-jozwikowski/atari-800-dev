# Atari800 dev - ATasm

## Instructions

This workspace is mainly based on `cerebus.atasm-altirra-bridge` plugin. It's homepage will give you all instructions you'll need.

To change file being compiled modify `atasm-build.json` file - precisely the `input` field.

## Extensions

The `cerebus.atasm-altirra-bridge` is obviusly needed, since no build command is being introduced into this workspace.

## Emulation

For running altirra emulator I recommend installing it under WINE and changing appropriate paths in `./tools/run_altirra_wine.sh`, or defining `altirra` alias. 