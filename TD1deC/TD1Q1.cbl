       IDENTIFICATION DIVISION.
       PROGRAM-ID. TD1Q1.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  A PIC 999.
       01  B PIC 999.
       01  N PIC 999.
       01  I PIC 999.
       01  R PIC 999.

       PROCEDURE DIVISION.
           DISPLAY "Entrez la borne inf. : ".
           ACCEPT A.
           DISPLAY "Entrez la borne sup. : ".
           ACCEPT B.
           MOVE A TO I.
           PERFORM LOOP UNTIL I = B + 1.
           STOP RUN.

       LOOP.
           DIVIDE I BY 5 GIVING R REMAINDER R.
           IF R = 2
               DISPLAY I
           ELSE
               IF R = 3
                   DISPLAY I
               END-IF
           END-IF.
           ADD 1 TO I.
