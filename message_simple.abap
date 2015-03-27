REPORT  Z_TRN_SAP6_CALC MESSAGE-ID Z_TRN_SAP6_MESSAGES.
PARAMETERS:
lp_a TYPE i,
lp_b TYPE i,
lp_o TYPE c.
DATA:
lp_c TYPE f.
CONSTANTS:
bulhar TYPE f VALUE '10.11',
n TYPE i VALUE 10,
pi TYPE f VALUE '3.14'.


CASE lp_o.
  WHEN '+'.
    lp_c = lp_a + lp_b.
  WHEN '-'.
    lp_c = lp_a - lp_b.
  WHEN '*'.
    lp_c = lp_a * lp_b.
  WHEN '/'.
    IF lp_b = 0.
      MESSAGE i001 WITH pi.
    ELSE.
      lp_c = lp_a / lp_b.
    ENDIF.
ENDCASE.

WRITE: lp_c.

DO n TIMES.
  IF sy-index > 9.
    EXIT.
  ELSE.
    WRITE:/ n.
    WRITE: ' aa ', sy-index.
    lp_c = sy-index * pi.
    WRITE:/ lp_c.
  ENDIF.
ENDDO. 
