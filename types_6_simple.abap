*Juraj Piovar
REPORT  Z_JP_01.

" SLIS all ALV data types
TYPE-POOLS: slis.  

DATA: lt_jp TYPE TABLE OF spfli,
      it_fieldcat  TYPE slis_t_fieldcat_alv,
      wa_fieldcat  TYPE slis_fieldcat_alv.
	  
START-OF-SELECTION.	

" fetch data spfli -> lt_jp
SELECT * FROM spfli INTO TABLE lt_jp.   

" field catalog
wa_fieldcat-fieldname  = 'CARRID'.    " fieldname in real table  
wa_fieldcat-seltext_m  = 'carr.id'.   " column output description
APPEND wa_fieldcat TO it_fieldcat.

wa_fieldcat-fieldname  = 'CONNID'.	  " fieldname in real table 
wa_fieldcat-seltext_m  = 'conn.id'.   	  " colum output description
APPEND wa_fieldcat TO it_fieldcat.
  
	  
CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
EXPORTING
	IT_FIELDCAT = it_fieldcat
TABLES
	T_OUTTAB = lt_jp
EXCEPTIONS
	PROGRAM_ERROR = 1
	OTHERS = 2
          .		  
IF SY-SUBRC <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*         WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
ENDIF.
