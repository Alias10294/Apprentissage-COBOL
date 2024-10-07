       IDENTIFICATION DIVISION.
       PROGRAM-ID. Boucle1.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CPT PIC 9 VALUE 1.

       PROCEDURE DIVISION.
           PERFORM 5 TIMES
               DISPLAY CPT
               ADD 1 TO CPT
           END-PERFORM.
           STOP RUN.
