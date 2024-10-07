       IDENTIFICATION DIVISION.
       PROGRAM-ID. JustePrix.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  N PIC 999.
       01  TROUVE PIC 9 VALUE 0.
       01  CHOIX PIC 999.
       01  D PIC 9(10).

       PROCEDURE DIVISION.
       MAIN.
           MOVE FUNCTION CURRENT-DATE(15:2) TO D.
           COMPUTE N = 100 * (FUNCTION RANDOM(D)).
           PERFORM LOOP UNTIL TROUVE = 1.
           STOP RUN.
       
       LOOP.
           DISPLAY "Entrez votre choix : "
           ACCEPT CHOIX.
           IF CHOIX > N
           THEN
               DISPLAY "Choix trop grand !"
           ELSE 
               IF CHOIX < N
               THEN
                   DISPLAY "Choix trop petit !"
               ELSE
                   DISPLAY "C'est gagné !"
                   MOVE 1 TO TROUVE.
