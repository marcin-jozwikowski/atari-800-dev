echo "1" > h1_drive/_CODE.BAS
cat $FILE >> h1_drive/_CODE.BAS
atari800 -xl -no-autosave-config -basic -H1 h1_drive/ -hreadwrite tools/AutoBAS.atr