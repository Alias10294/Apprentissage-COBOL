       IDENTIFICATION DIVISION.
       PROGRAM-ID. TD1Q2.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  X1 PIC 999.
       01  X2 PIC 999.
       01  D1 PIC 999.
       01  D2 PIC 999.
       

       PROCEDURE DIVISION.
       LECTURE.
           DISPLAY "Entrez la position depart du robot r1 : ".
           ACCEPT X1.
           DISPLAY "Entrez la position depart du robot r2 : ".
           ACCEPT X2.
           DISPLAY "Entrez la vitesse du robot r1 : "
           ACCEPT D1.
           DISPLAY "Entrez la vitesse du robot r2 : "
           ACCEPT D2.
       
       TOO-SLOW-CHECK.
           IF D1 <= D2
               DISPLAY "Non"
               STOP RUN.
       
       START-CHECK.
           IF X1 >= X2
               DISPLAY "Mauvaises positions depart (x1 >= x2)"
               STOP RUN.
               
       MAIN.
           PERFORM LOOP UNTIL X1 >= X2.
           IF X1 = X2
               DISPLAY "Oui"
           ELSE
               DISPLAY "Non"
           END-IF.
           STOP RUN.
       
       LOOP.
           ADD D1 TO X1.
           ADD D2 TO X2.
