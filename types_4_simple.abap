REPORT  Z_TRN_SAP6_TYPES.

TYPES: BEGIN OF tel_zoznam,
    Meno TYPE NAME_FIRST,
    Priezvisko TYPE NAME_LAST,
    Cislo TYPE P0006-TELNR,
    Adresa TYPE P0006-STRAS,
  END OF tel_zoznam.


DATA IT_zoznam TYPE STANDARD TABLE OF tel_zoznam.

DATA ls_tel_zoznam_jp TYPE tel_zoznam.




ls_tel_zoznam_jp-Meno = 'Janko'.
ls_tel_zoznam_jp-Priezvisko = 'Hrasko'.
ls_tel_zoznam_jp-Cislo = '123456789'.
ls_tel_zoznam_jp-Adresa = 'Hanovecka 10, Kosice 05455'.
APPEND ls_tel_zoznam_jp TO IT_zoznam.



ls_tel_zoznam_jp-Meno = 'Janko1'.
ls_tel_zoznam_jp-Priezvisko = 'Hrasko1'.
ls_tel_zoznam_jp-Cislo = '123456700'.
ls_tel_zoznam_jp-Adresa = 'Hanovecka 10, Kosice 0000'.
APPEND ls_tel_zoznam_jp TO IT_zoznam.


ls_tel_zoznam_jp-Meno = 'Janko2'.
ls_tel_zoznam_jp-Priezvisko = 'Hrasko2'.
ls_tel_zoznam_jp-Cislo = '123456722'.
ls_tel_zoznam_jp-Adresa = 'Hanovecka 10, Kosice 2222'.
APPEND ls_tel_zoznam_jp TO IT_zoznam.


CLEAR ls_tel_zoznam_jp.

LOOP AT IT_zoznam INTO ls_tel_zoznam_jp.


WRITE:/ SY-TABIX.                           "vypis indexu
WRITE:/ ls_tel_zoznam_jp-Meno.
WRITE:/ ls_tel_zoznam_jp-Priezvisko.
WRITE:/ ls_tel_zoznam_jp-Cislo.
WRITE:/ ls_tel_zoznam_jp-Adresa.

ULINE.

ENDLOOP. 
