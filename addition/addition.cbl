       IDENTIFICATION DIVISION.
       PROGRAM-ID. Addition.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  A PIC 9(2) VALUE ZEROS.
       01  B PIC 9(2) VALUE ZEROS.
       01  R PIC 9(3) VALUE ZEROS.
       01  ZR PIC ZZ9 VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "Entrez la valeur du premier nombre : ".
           ACCEPT A.
           DISPLAY "Entrez la valeur du deuxième nombre : ".
           ACCEPT B.
           ADD A B TO R.
           MOVE R TO ZR.
           DISPLAY "L'addition des deux nombres donne : " ZR.
           STOP RUN.
