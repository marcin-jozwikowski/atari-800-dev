100 REM init
110 SETCOLOR 1,1,14: SETCOLOR 2,0,0: SETCOLOR 4,0,0
120 PRINT CHR$(125): POKE 752,1 : PRINT CHR$(32)
130 DX = 0: DY = 0 : S = 15 : LAST = 15
140 X = 3: Y = 3
990 GOTO 10000

1000 REM joystick reading
1010 S = STICK(0) : LAST = S
1020 S = STICK(0) : IF S = LAST THEN 1020 : LAST = S : IF S = 15 THEN 1020
1030 DX = (S = 5 OR S = 6 OR S = 7) - (S = 9 OR S = 10 OR S = 11) : DY = (S = 5 OR S = 9 OR S = 13) - (S = 6 OR S = 10 OR S = 14)
1040 RETURN

10000 REM Main loop
10010 POSITION X, Y: PRINT CHR$(32)
10020 X = X + DX: Y = Y + DY: POSITION X, Y: PRINT "O"
10030 GOSUB 1000
10900 GOTO 10000

RUN
