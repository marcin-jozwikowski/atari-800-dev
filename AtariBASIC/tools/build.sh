cp $FILE h1_drive/BUILT.BAS && \
echo "" >> h1_drive/BUILT.BAS && \
echo "RUN" >> h1_drive/BUILT.BAS && \
echo "" >> h1_drive/BUILT.BAS && \
atari800 -xl -no-autosave-config -basic -H1 h1_drive/ -hreadwrite tools/AutoBAS.atr