100 REM init
110 SETCOLOR 1,1,14: SETCOLOR 2,0,0: SETCOLOR 4,0,0
120 PRINT CHR$(125)
130 DX = 0: DY = 0 : S = 15 : LAST = 15
990 GOTO 10000

1000 REM joystick reading
1010 S = STICK(0) : LAST = S
1020 S = STICK(0)
1040 IF S = LAST THEN 1020
1041 LAST = S
1042 IF S = 15 THEN 1020
1050 DX = (S = 5 OR S = 6 OR S = 7) - (S = 9 OR S = 10 OR S = 11)
1060 DY = (S = 5 OR S = 9 OR S = 13) - (S = 6 OR S = 10 OR S = 14)
1090 RETURN

10000 GOSUB 1010
10080 PRINT "DX";DX,"DY";DY
10900 GOTO 10000

RUN
