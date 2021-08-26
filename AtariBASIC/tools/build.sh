echo "10" > h1_drive/_CODE.BAS
cat $FILE >> h1_drive/_CODE.BAS
echo "" >> h1_drive/_CODE.BAS
echo $AUTORUN
if [ $AUTORUN -gt 0 ]; then
    echo "RUN" >> h1_drive/_CODE.BAS
    echo "" >> h1_drive/_CODE.BAS
fi
atari800 -xl -no-autosave-config -basic -H1 h1_drive/ -hreadwrite tools/AutoBAS.atr