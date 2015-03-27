
REPORT  Z_TRN_SAP6_POKUS4.

TYPES: BEGIN OF tel_zoznam,
    pernr TYPE P0006-PERNR,
    stras TYPE P0006-STRAS,
    telnr TYPE P0006-TELNR,
  END OF tel_zoznam.


TYPES: BEGIN OF tel_zoznam_full.
    INCLUDE TYPE tel_zoznam.
TYPES: vorna TYPE p0002-vorna,
       nachn TYPE p0002-nachn,
  END OF tel_zoznam_full.


DATA: lv_zoznam TYPE tel_zoznam,            "struktura
      lt_zoznam TYPE TABLE OF tel_zoznam,   " tabulka
      lv_zoznam2 TYPE tel_zoznam_full,
      lt_zoznam2 TYPE TABLE OF tel_zoznam_full.



SELECT * FROM pa0006 INTO CORRESPONDING FIELDS OF TABLE lt_zoznam2.

*lv = local variable   lt = local table

*LOOP AT lt_zoznam INTO lv_zoznam.
*WRITE:/ lv_zoznam-pernr.
*WRITE: lv_zoznam-stras.
*WRITE: lv_zoznam-telnr.
*ENDLOOP.

LOOP AT lt_zoznam2 INTO lv_zoznam2.
SELECT SINGLE VORNA FROM pa0002 INTO lv_zoznam2-vorna WHERE pernr = lv_zoznam2-pernr.
SELECT SINGLE NACHN FROM pa0002 INTO lv_zoznam2-nachn WHERE pernr = lv_zoznam2-pernr.
MODIFY lt_zoznam2 FROM lv_zoznam2.
ENDLOOP.
BREAK-POINT. 
