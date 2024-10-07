       IDENTIFICATION DIVISION.
       PROGRAM-ID. Premier.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  N PIC 999.
       01  PREMIER PIC 9 VALUE 1.
       01  I PIC 999 VALUE 2.
       01  R PIC 999.

       PROCEDURE DIVISION.
       MAIN.
           DISPLAY "Entrez le nombre à vérifier".
           ACCEPT N.
           PERFORM LOOP UNTIL (PREMIER = 0 OR I > FUNCTION SQRT(N)).
           DISPLAY PREMIER.
           STOP RUN.
       
       LOOP.
           DIVIDE N BY I GIVING R REMAINDER R.
           IF R = 0 THEN
               MOVE 0 TO PREMIER.
           ADD 1 TO I.
           