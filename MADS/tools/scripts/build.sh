./tools/MADS_Compiler/mads -o:./out/output.obx "$FILE"

if [ $AUTORUN -gt 0 ]; then
    atari800 out/output.obx
fi
