REPORT  Z_SIMPLE_1.
DATA: lv_a TYPE i VALUE 2,
      lv_b TYPE i VALUE 3,
      lv_res TYPE i,
      lv_t1 TYPE string VALUE 'Hello',
      lv_t2 TYPE string VALUE 'world',
      lv_t_res TYPE string.

lv_res = lv_a + lv_b.
WRITE: lv_res.
ULINE.
CONCATENATE lv_t1 lv_t2 INTO lv_t_res SEPARATED BY SPACE.
WRITE: lv_t_res.
ULINE.
CONCATENATE lv_t1+2(2) lv_t2 INTO lv_t_res.
WRITE lv_t_res. 
