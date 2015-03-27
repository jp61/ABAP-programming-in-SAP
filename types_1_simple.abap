REPORT  Z_TRN_SAP6_POKUS3.

TYPES: BEGIN OF tel_zoznam,
    Meno TYPE NAME_FIRST,
    Priezvisko TYPE NAME_LAST,
    Cislo TYPE P0006-TELNR,
    Adresa TYPE P0006-STRAS,
  END OF tel_zoznam.

DATA ls_tel_zoznam_jp TYPE tel_zoznam.
ls_tel_zoznam_jp-Meno = 'Janko'.
ls_tel_zoznam_jp-Priezvisko = 'Hrasko'.
ls_tel_zoznam_jp-Cislo = '123456789'.
ls_tel_zoznam_jp-Adresa = 'Hanovecka 10, Kosice 05455'.

WRITE:/ ls_tel_zoznam_jp-Meno.
WRITE:/ ls_tel_zoznam_jp-Priezvisko.
WRITE:/ ls_tel_zoznam_jp-Cislo.
WRITE:/ ls_tel_zoznam_jp-Adresa. 
