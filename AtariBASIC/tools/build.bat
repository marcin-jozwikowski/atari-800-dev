@echo 10 > h1_drive/_CODE.BAS
@type %1 >> h1_drive/_CODE.BAS
@echo: >> h1_drive/_CODE.BAS
@ if "%2" == "1" ( echo RUN >> h1_drive/_CODE.BAS )
atari800 -xl -no-autosave-config -basic -H1 h1_drive/ -hreadwrite tools/AutoBAS.atr