*&---------------------------------------------------------------------*
*& Report Z_MTRL_LOAD_ADDS
*&---------------------------------------------------------------------*
* Author : David Ellwood EXTELLWODA
* Date  :  March 2023
* CHG 106
*----------------------------------------------------------------------*
* Preconditions:
*  Excel file with valid data and header line
*
*----------------------------------------------------------------------*
* Short description:
*
* The user will complete the material template and then upload to SAP.
*
REPORT Z_MTRL_LOAD_ADDS.

INCLUDE Z_MTRL_LOAD_ADDS_TOP.

INCLUDE Z_MTRL_LOAD_ADDS_SEL.

*PARAMETERS: p_file TYPE  rlgrap-filename.

* At selection screen
AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file. "Excel should be with CAPS LOCK, BOLD header line with field names
  CALL FUNCTION 'F4_FILENAME'
    EXPORTING
      field_name = 'P_FILE'
    IMPORTING
      file_name  = p_file.

***********************************************************************
*START-OF-SELECTION.
START-OF-SELECTION.

******* MAKT
if rb_makt = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_makt[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
  Endif.
******* /MAKT
******* MDMA
if rb_mdma = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mdma[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
ENDIF.
******* /MDMA

******* MVKE
if rb_mVKE = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mvke[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
ENDIF.
******* /MVKE

******* MARC
if rb_nmat = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_marc[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
ENDIF.
******* /MARC


******* MVER
if rb_mver = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mver[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /MVER

******* MARD
if rb_mard = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mard[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /MARD

******* MBEW
if rb_mbew = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mbew[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /MBEW

******* MLGN
if rb_mlgn = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mlgn[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /MLGN

******* MARM
if rb_marm = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_marm[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /MARM

******* MLTX
if rb_mltx = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mltx[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /MLTX

******* MLAN
if rb_mlan = 'X' or rb_mland = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mlan[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /MLAN

******* AUSP
if rb_ausp = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ausp[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /AUSP

******* mpop
if rb_fore = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mpop[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /mpop

******* mapr
if rb_mapr = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mapr[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /mapr

******* prop
if rb_prop = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_prop[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /prop

******* qmat
if rb_qmat = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_qmat[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /qmat

******* marcn
if rb_marc = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_marcn[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif.
******* /marcn


***********************************************************************

* END-OF-SELECTION.
END-OF-SELECTION.




*Create records

************* MAKT
If rb_makt = 'X'.
  IF gt_work_tab_makt[] IS NOT INITIAL.
    LOOP AT gt_work_tab_makt INTO gs_work_tab_makt.
      CLEAR: gs_datatab_makt.
      IF gs_work_tab_makt-matnr IS INITIAL.
        CONTINUE.
      ENDIF.
      MOVE-CORRESPONDING gs_work_tab_makt TO gs_datatab_makt.
      APPEND gs_datatab_makt TO gt_datatab_makt.
    ENDLOOP.
    SORT gt_datatab_makt BY matnr.

"create materials
      LOOP AT gt_datatab_makt INTO gs_datatab_makt.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_makt-matnr
            IMPORTING
              output = gs_datatab_makt-matnr.

"rerfesh all tables
CLEAR: LS_head, LS_client, LS_plantdata, ls_salesdata, ls_forecast,ls_plangdata, ls_stlocdata.
CLEAR: LS_clientx, LS_plantdatax, ls_salesdatax, ls_forecastx, ls_plangdatax, ls_stlocdatax.
Clear: ls_valdata, ls_warehouse, ls_stortyped.
Clear: ls_valdatax, ls_warehousex, ls_stortypedx.
Clear: ls_materialdescription, ls_unitsofmeasure, ls_unitsofmeasurex, ls_materiallongtext, ls_taxclassifications.

REFRESH: LT_head, LT_client, LT_plantdata, lt_salesdata, lt_forecast, lt_plangdata, lt_stlocdata.
REFRESH: LT_clientx, LT_plantdatax, lt_salesdatax, lt_forecastx, lt_plangdatax, lt_stlocdatax.
REFRESH: lt_valdata, lt_warehouse, lt_stortyped.
REFRESH: lt_valdatax, lt_warehousex, lt_stortypedx.
REFRESH: lt_materialdescription, lt_unitsofmeasure, lt_unitsofmeasurex, lt_materiallongtext, lt_taxclassifications.

***************** fill structures

"fill tab_head
ls_head-material = gs_datatab_makt-MATNR.
"ls_head-ind_sector = gs_datatab-MBRSH.
"ls_head-matl_type = gs_datatab-MTART.
"ls_head-basic_view = 'X'.
"ls_head-sales_view = 'X'.
"ls_head-purchase_view = 'X'.
"ls_head-mrp_view = 'X'.
"ls_head-quality_view = 'X'.
Append ls_head to lt_head.


"makt eng.
ls_materialdescription-LANGU = gs_datatab_makt-SPRAS.
ls_materialdescription-LANGU_ISO = gs_datatab_makt-ISO_SPRAS.
ls_materialdescription-MATL_DESC = gs_datatab_makt-MAKTX.
Append ls_materialdescription to lt_materialdescription.


"tab_forecast   LIKE bapi_mpop, - mdma
"tab_forecastx  LIKE bapi_mpopx, - mdma
"tab_stlocdata  LIKE bapi_mard,
"tab_stlocdatax LIKE bapi_mardx,
"tab_valdata    LIKE bapi_mbew,
"tab_valdatax   LIKE bapi_mbewx,
"tab_warehouse  LIKE bapi_mlgn,
"tab_warehousex LIKE bapi_mlgnx,
"tab_stortyped  LIKE bapi_mlgt,
"tab_stortypedx LIKE bapi_mlgtx.


"      lt_unitsofmeasure type table of bapi_marm.
"      ls_unitsofmeasure like line of lt_unitsofmeasure.
"      lt_unitsofmeasurex type table of bapi_marmx.
"      ls_unitsofmeasurex like line of lt_unitsofmeasurex.
"      lt_materiallongtext type table of bapi_mltx.
"      ls_materiallongtext like line of lt_materiallongtext.
"      lt_taxclassifications type table of bapi_mlan.
"      ls_taxclassifications like line of lt_taxclassifications.


"create material
         CALL FUNCTION 'BAPI_MATERIAL_SAVEDATA'
           EXPORTING
             headdata             = ls_head
"             clientdata           = ls_client
"             clientdatax          = ls_clientx
"             plantdata            = ls_plantdata
"             plantdatax           = ls_plantdatax
"             forecastparameters   = tab_forecast
"             forecastparametersx  = tab_forecastx
"             planningdata         = tab_plangdata
"             planningdatax        = tab_plangdatax
"             storagelocationdata  = tab_stlocdata
"             storagelocationdatax = tab_stlocdatax
"             valuationdata        = tab_valdata
"             valuationdatax       = tab_valdatax
"             warehousenumberdata  = tab_warehouse
"             warehousenumberdatax = tab_warehousex
"             salesdata            = ls_salesdata
"             salesdatax           = ls_salesdatax
"             storagetypedata      = tab_stortyped
"             storagetypedatax     = tab_stortypedx
*            FLAG_ONLINE          = ' '
*            FLAG_CAD_CALL        = ' '
*            NO_DEQUEUE           = ' '
           IMPORTING
             return               = tab_return
           TABLES
              materialdescription  = lt_materialdescription
"             unitsofmeasure       = lt_units_o_m_new[]
"             unitsofmeasurex      = lt_units_o_m_newx[]
*            INTERNATIONALARTNOS  =
"             materiallongtext     = lt_longtexts[]
"             taxclassifications   = lt_taxclasif_new[]
             returnmessages       = tab_return_msgs[]
*            PRTDATA              =
*            PRTDATAX             =
*            EXTENSIONIN          =
*            EXTENSIONINX         =
.

        IF sy-subrc = 0.

          CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
            EXPORTING
              wait = 'X'
*               IMPORTING
*             RETURN        =
            .
        ELSE.
          CALL FUNCTION 'BAPI_TRANSACTION_ROLLBACK'
*           IMPORTING
*             RETURN        =
            .
        ENDIF.
      ENDLOOP. "gt_datatab.


  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "MAKT
***************MAKT

************* MVER
If rb_mver = 'X'.
  IF gt_work_tab_mver[] IS NOT INITIAL.
    LOOP AT gt_work_tab_mver INTO gs_work_tab_mver.
      CLEAR: gs_datatab_mver.
      IF gs_work_tab_mver-matnr IS INITIAL.
        CONTINUE.
      ENDIF.
      MOVE-CORRESPONDING gs_work_tab_mver TO gs_datatab_mver.
      APPEND gs_datatab_mver TO gt_datatab_mver.
    ENDLOOP.
    SORT gt_datatab_mver BY matnr.

"create materials
      LOOP AT gt_datatab_mver INTO gs_datatab_mver.

        Shift gs_datatab_mver-matnr left deleting leading space.

          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_mver-matnr
            IMPORTING
              output = gs_datatab_mver-matnr.

"rerfesh all tables
CLEAR: LS_mver.
REFRESH: LT_mver.
***************** fill structures
        ls_mver-MATNR = gs_datatab_mver-MATNR.
        ls_mver-WERKS = gs_datatab_mver-WERKS.
        ls_mver-GJAHR = gs_datatab_mver-GJAHR.
        ls_mver-PERKZ = gs_datatab_mver-PERKZ.
        ls_mver-ZAHLR = gs_datatab_mver-ZAHLR.
        ls_mver-GSV01 = gs_datatab_mver-GSV01.
        ls_mver-GSV02 = gs_datatab_mver-GSV02.
        ls_mver-GSV03 = gs_datatab_mver-GSV03.
        ls_mver-GSV04 = gs_datatab_mver-GSV04.
        ls_mver-GSV05 = gs_datatab_mver-GSV05.
        ls_mver-GSV06 = gs_datatab_mver-GSV06.
        ls_mver-GSV07 = gs_datatab_mver-GSV07.
        ls_mver-GSV08 = gs_datatab_mver-GSV08.
        ls_mver-GSV09 = gs_datatab_mver-GSV09.
        ls_mver-GSV10 = gs_datatab_mver-GSV10.
        ls_mver-GSV11 = gs_datatab_mver-GSV11.
        ls_mver-GSV12 = gs_datatab_mver-GSV12.
        ls_mver-GSV13 = gs_datatab_mver-GSV13.
        ls_mver-UNV01 = gs_datatab_mver-UNV01.
        ls_mver-UNV02 = gs_datatab_mver-UNV02.
        ls_mver-UNV03 = gs_datatab_mver-UNV03.
        ls_mver-UNV04 = gs_datatab_mver-UNV04.
        ls_mver-UNV05 = gs_datatab_mver-UNV05.
        ls_mver-UNV06 = gs_datatab_mver-UNV06.
        ls_mver-UNV07 = gs_datatab_mver-UNV07.
        ls_mver-UNV08 = gs_datatab_mver-UNV08.
        ls_mver-UNV09 = gs_datatab_mver-UNV09.
        ls_mver-UNV10 = gs_datatab_mver-UNV10.
        ls_mver-UNV11 = gs_datatab_mver-UNV11.
        ls_mver-UNV12 = gs_datatab_mver-UNV12.
        ls_mver-UNV13 = gs_datatab_mver-UNV13.
        ls_mver-MGV01 = gs_datatab_mver-MGV01.
        ls_mver-MGV02 = gs_datatab_mver-MGV02.
        ls_mver-MGV03 = gs_datatab_mver-MGV03.
        ls_mver-MGV04 = gs_datatab_mver-MGV04.
        ls_mver-MGV05 = gs_datatab_mver-MGV05.
        ls_mver-MGV06 = gs_datatab_mver-MGV06.
        ls_mver-MGV07 = gs_datatab_mver-MGV07.
        ls_mver-MGV08 = gs_datatab_mver-MGV08.
        ls_mver-MGV09 = gs_datatab_mver-MGV09.
        ls_mver-MGV10 = gs_datatab_mver-MGV10.
        ls_mver-MGV11 = gs_datatab_mver-MGV11.
        ls_mver-MGV12 = gs_datatab_mver-MGV12.
        ls_mver-MGV13 = gs_datatab_mver-MGV13.
        ls_mver-MUV01 = gs_datatab_mver-MUV01.
        ls_mver-MUV02 = gs_datatab_mver-MUV02.
        ls_mver-MUV03 = gs_datatab_mver-MUV03.
        ls_mver-MUV04 = gs_datatab_mver-MUV04.
        ls_mver-MUV05 = gs_datatab_mver-MUV05.
        ls_mver-MUV06 = gs_datatab_mver-MUV06.
        ls_mver-MUV07 = gs_datatab_mver-MUV07.
        ls_mver-MUV08 = gs_datatab_mver-MUV08.
        ls_mver-MUV09 = gs_datatab_mver-MUV09.
        ls_mver-MUV10 = gs_datatab_mver-MUV10.
        ls_mver-MUV11 = gs_datatab_mver-MUV11.
        ls_mver-MUV12 = gs_datatab_mver-MUV12.
        ls_mver-MUV13 = gs_datatab_mver-MUV13.

        Modify mver from ls_mver.
        Commit work.
      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "MVER
************** MVER

************* MARD
If rb_mard = 'X'.
  IF gt_work_tab_mard[] IS NOT INITIAL.
    LOOP AT gt_work_tab_mard INTO gs_work_tab_mard.
      CLEAR: gs_datatab_mard.
      IF gs_work_tab_mard-matnr IS INITIAL.
        CONTINUE.
      ENDIF.
      MOVE-CORRESPONDING gs_work_tab_mard TO gs_datatab_mard.
      APPEND gs_datatab_mard TO gt_datatab_mard.
    ENDLOOP.
    SORT gt_datatab_mard BY matnr.

"create materials
      LOOP AT gt_datatab_mard INTO gs_datatab_mard.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_mard-matnr
            IMPORTING
              output = gs_datatab_mard-matnr.

"rerfesh all tables
CLEAR: LS_head, LS_client, LS_plantdata, ls_salesdata, ls_forecast,ls_plangdata, ls_stlocdata.
CLEAR: LS_clientx, LS_plantdatax, ls_salesdatax, ls_forecastx, ls_plangdatax, ls_stlocdatax.
Clear: ls_valdata, ls_warehouse, ls_stortyped.
Clear: ls_valdatax, ls_warehousex, ls_stortypedx.
Clear: ls_materialdescription, ls_unitsofmeasure, ls_unitsofmeasurex, ls_materiallongtext, ls_taxclassifications.

REFRESH: LT_head, LT_client, LT_plantdata, lt_salesdata, lt_forecast, lt_plangdata, lt_stlocdata.
REFRESH: LT_clientx, LT_plantdatax, lt_salesdatax, lt_forecastx, lt_plangdatax, lt_stlocdatax.
REFRESH: lt_valdata, lt_warehouse, lt_stortyped.
REFRESH: lt_valdatax, lt_warehousex, lt_stortypedx.
REFRESH: lt_materialdescription, lt_unitsofmeasure, lt_unitsofmeasurex, lt_materiallongtext, lt_taxclassifications.

***************** fill structures

        ls_mard-MATNR = gs_datatab_mard-MATNR.
        ls_mard-WERKS = gs_datatab_mard-WERKS.
        ls_mard-LGORT = gs_datatab_mard-LGORT.
        ls_mard-PSTAT = gs_datatab_mard-PSTAT.
        ls_mard-LFGJA = gs_datatab_mard-LFGJA.
        ls_mard-LFMON = gs_datatab_mard-LFMON.
        ls_mard-LGPBE = gs_datatab_mard-LGPBE.
        ls_mard-MDJIN = gs_datatab_mard-MDJIN.
        Modify mard from ls_mard.
        Commit work.

      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "MARD
******************************** MARD

************* mbew
If rb_mbew = 'X'.
  IF gt_work_tab_mbew[] IS NOT INITIAL.
    LOOP AT gt_work_tab_mbew INTO gs_work_tab_mbew.
      CLEAR: gs_datatab_mbew.
      IF gs_work_tab_mbew-matnr IS INITIAL.
        CONTINUE.
      ENDIF.
      MOVE-CORRESPONDING gs_work_tab_mbew TO gs_datatab_mbew.
      APPEND gs_datatab_mbew TO gt_datatab_mbew.
    ENDLOOP.
    SORT gt_datatab_mbew BY matnr.

"create materials
      LOOP AT gt_datatab_mbew INTO gs_datatab_mbew.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_mbew-matnr
            IMPORTING
              output = gs_datatab_mbew-matnr.

"rerfesh all tables
CLEAR: LS_head, LS_client, LS_plantdata, ls_salesdata, ls_forecast,ls_plangdata, ls_stlocdata.
CLEAR: LS_clientx, LS_plantdatax, ls_salesdatax, ls_forecastx, ls_plangdatax, ls_stlocdatax.
Clear: ls_valdata, ls_warehouse, ls_stortyped.
Clear: ls_valdatax, ls_warehousex, ls_stortypedx.
Clear: ls_materialdescription, ls_unitsofmeasure, ls_unitsofmeasurex, ls_materiallongtext, ls_taxclassifications.

REFRESH: LT_head, LT_client, LT_plantdata, lt_salesdata, lt_forecast, lt_plangdata, lt_stlocdata.
REFRESH: LT_clientx, LT_plantdatax, lt_salesdatax, lt_forecastx, lt_plangdatax, lt_stlocdatax.
REFRESH: lt_valdata, lt_warehouse, lt_stortyped.
REFRESH: lt_valdatax, lt_warehousex, lt_stortypedx.
REFRESH: lt_materialdescription, lt_unitsofmeasure, lt_unitsofmeasurex, lt_materiallongtext, lt_taxclassifications.

***************** fill structures

"fill tab_head
ls_head-material = gs_datatab_mbew-MATNR.
"ls_head-ind_sector = gs_datatab-MBRSH.
"ls_head-matl_type = gs_datatab-MTART.
"ls_head-basic_view = 'X'.
"ls_head-sales_view = 'X'.
"ls_head-purchase_view = 'X'.
"ls_head-mrp_view = 'X'.
"ls_head-quality_view = 'X'.
"ls_head-forecast_view = 'X'.
"ls_head-work_sched_view_view = 'X'.
"ls_head-prt_view = 'X'.
"ls_head-storage_view = 'X'.
"ls_head-warehouse_view = 'X'.
ls_head-account_view = 'X'.
ls_head-cost_view = 'X'.
Append ls_head to lt_head.

ls_valdata-VAL_AREA = gs_datatab_mbew-BWKEY.
ls_valdata-PRICE_CTRL = gs_datatab_mbew-VPRSV.
ls_valdata-MOVING_PR = gs_datatab_mbew-VERPR.
ls_valdata-STD_PRICE = gs_datatab_mbew-STPRS.
ls_valdata-PRICE_UNIT = gs_datatab_mbew-PEINH.
ls_valdata-VAL_CLASS = gs_datatab_mbew-BKLAS.
ls_valdata-PR_CTRL_PP = gs_datatab_mbew-VMVPR.
ls_valdata-MOV_PR_PP = gs_datatab_mbew-VMVER.
ls_valdata-STD_PR_PP = gs_datatab_mbew-VMSTP.
ls_valdata-PR_UNIT_PP = gs_datatab_mbew-VMPEI.
ls_valdata-VCLASS_PP = gs_datatab_mbew-VMBKL.
ls_valdata-PR_CTRL_PY = gs_datatab_mbew-VJVPR.
ls_valdata-MOV_PR_PY = gs_datatab_mbew-VJVER.
ls_valdata-STD_PR_PY = gs_datatab_mbew-VJSTP.
ls_valdata-PR_UNIT_PY = gs_datatab_mbew-VJPEI.
ls_valdata-VCLASS_PY = gs_datatab_mbew-VJBKL.
ls_valdata-FUTURE_PR = gs_datatab_mbew-ZKPRS.
ls_valdata-VALID_FROM = gs_datatab_mbew-ZKDAT.
ls_valdata-PLND_PRICE = gs_datatab_mbew-ZPLPR.
ls_valdata-PLNDPRICE1 = gs_datatab_mbew-ZPLP1.
ls_valdata-PLNDPRICE2 = gs_datatab_mbew-ZPLP2.
ls_valdata-PLNDPRICE3 = gs_datatab_mbew-ZPLP3.
ls_valdata-PLNDPRDATE1 = gs_datatab_mbew-ZPLD1.
ls_valdata-PLNDPRDATE2 = gs_datatab_mbew-ZPLD2.
ls_valdata-PLNDPRDATE3 = gs_datatab_mbew-ZPLD3.
ls_valdata-DEVAL_IND = gs_datatab_mbew-ABWKZ.
ls_valdata-QTY_STRUCT = gs_datatab_mbew-EKALR.
ls_valdata-ML_ACTIVE = gs_datatab_mbew-MLMAA.
ls_valdata-ML_SETTLE = gs_datatab_mbew-MLAST.
ls_valdata-ORIG_MAT = gs_datatab_mbew-HKMAT.
ls_valdata-VM_SO_STK = gs_datatab_mbew-EKLAS.
ls_valdata-VM_P_STOCK = gs_datatab_mbew-QKLAS.
Append ls_valdata to lt_valdata.

ls_valdatax-VAL_AREA = gs_datatab_mbew-BWKEY.
ls_valdatax-PRICE_CTRL = 'X'.
ls_valdatax-MOVING_PR = 'X'.
ls_valdatax-STD_PRICE = 'X'.
ls_valdatax-PRICE_UNIT = 'X'.
ls_valdatax-VAL_CLASS = 'X'.
ls_valdatax-PR_CTRL_PP = 'X'.
ls_valdatax-MOV_PR_PP = 'X'.
ls_valdatax-STD_PR_PP = 'X'.
ls_valdatax-PR_UNIT_PP = 'X'.
ls_valdatax-VCLASS_PP = 'X'.
ls_valdatax-PR_CTRL_PY = 'X'.
ls_valdatax-MOV_PR_PY = 'X'.
ls_valdatax-STD_PR_PY = 'X'.
ls_valdatax-PR_UNIT_PY = 'X'.
ls_valdatax-VCLASS_PY = 'X'.
ls_valdatax-FUTURE_PR = 'X'.
ls_valdatax-VALID_FROM = 'X'.
ls_valdatax-PLND_PRICE = 'X'.
ls_valdatax-PLNDPRICE1 = 'X'.
ls_valdatax-PLNDPRICE2 = 'X'.
ls_valdatax-PLNDPRICE3 = 'X'.
ls_valdatax-PLNDPRDATE1 = 'X'.
ls_valdatax-PLNDPRDATE2 = 'X'.
ls_valdatax-PLNDPRDATE3 = 'X'.
ls_valdatax-DEVAL_IND = 'X'.
ls_valdatax-QTY_STRUCT = 'X'.
ls_valdatax-ML_ACTIVE = 'X'.
ls_valdatax-ML_SETTLE = 'X'.
ls_valdatax-ORIG_MAT = 'X'.
ls_valdatax-VM_SO_STK = 'X'.
ls_valdatax-VM_P_STOCK = 'X'.
Append ls_valdatax to lt_valdatax.

"tab_warehouse  LIKE bapi_mlgn,
"tab_warehousex LIKE bapi_mlgnx,
"tab_stortyped  LIKE bapi_mlgt,
"tab_stortypedx LIKE bapi_mlgtx.


"      lt_unitsofmeasure type table of bapi_marm.
"      ls_unitsofmeasure like line of lt_unitsofmeasure.
"      lt_unitsofmeasurex type table of bapi_marmx.
"      ls_unitsofmeasurex like line of lt_unitsofmeasurex.
"      lt_materiallongtext type table of bapi_mltx.
"      ls_materiallongtext like line of lt_materiallongtext.
"      lt_taxclassifications type table of bapi_mlan.
"      ls_taxclassifications like line of lt_taxclassifications.


"create material
         CALL FUNCTION 'BAPI_MATERIAL_SAVEDATA'
           EXPORTING
             headdata             = ls_head
"             clientdata           = ls_client
"             clientdatax          = ls_clientx
"             plantdata            = ls_plantdata
"             plantdatax           = ls_plantdatax
"             forecastparameters   = tab_forecast
"             forecastparametersx  = tab_forecastx
"             planningdata         = tab_plangdata
"             planningdatax        = tab_plangdatax
"             storagelocationdata  = tab_stlocdata
"             storagelocationdatax = tab_stlocdatax
             valuationdata        = ls_valdata
             valuationdatax       = ls_valdatax
"             warehousenumberdata  = tab_warehouse
"             warehousenumberdatax = tab_warehousex
"             salesdata            = ls_salesdata
"             salesdatax           = ls_salesdatax
"             storagetypedata      = tab_stortyped
"             storagetypedatax     = tab_stortypedx
*            FLAG_ONLINE          = ' '
*            FLAG_CAD_CALL        = ' '
*            NO_DEQUEUE           = ' '
           IMPORTING
             return               = tab_return
           TABLES
"              materialdescription  = lt_materialdescription
"             unitsofmeasure       = lt_units_o_m_new[]
"             unitsofmeasurex      = lt_units_o_m_newx[]
*            INTERNATIONALARTNOS  =
"             materiallongtext     = lt_longtexts[]
"             taxclassifications   = lt_taxclasif_new[]
             returnmessages       = tab_return_msgs[]
*            PRTDATA              =
*            PRTDATAX             =
*            EXTENSIONIN          =
*            EXTENSIONINX         =
.
        IF sy-subrc = 0.
          CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
            EXPORTING
              wait = 'X'
*               IMPORTING
*             RETURN        =
            .
        ELSE.
          CALL FUNCTION 'BAPI_TRANSACTION_ROLLBACK'
*           IMPORTING
*             RETURN        =
            .
        ENDIF.
      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "mbew
***************mbew

************* mlgn
If rb_mlgn = 'X'.
  IF gt_work_tab_mlgn[] IS NOT INITIAL.
    LOOP AT gt_work_tab_mlgn INTO gs_work_tab_mlgn.
      CLEAR: gs_datatab_mlgn.
      IF gs_work_tab_mlgn-matnr IS INITIAL.
        CONTINUE.
      ENDIF.
      MOVE-CORRESPONDING gs_work_tab_mlgn TO gs_datatab_mlgn.
      APPEND gs_datatab_mlgn TO gt_datatab_mlgn.
    ENDLOOP.
    SORT gt_datatab_mlgn BY matnr.

"create materials
      LOOP AT gt_datatab_mlgn INTO gs_datatab_mlgn.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_mlgn-matnr
            IMPORTING
              output = gs_datatab_mlgn-matnr.

"rerfesh all tables
CLEAR: LS_head, LS_client, LS_plantdata, ls_salesdata, ls_forecast,ls_plangdata, ls_stlocdata.
CLEAR: LS_clientx, LS_plantdatax, ls_salesdatax, ls_forecastx, ls_plangdatax, ls_stlocdatax.
Clear: ls_valdata, ls_warehouse, ls_stortyped.
Clear: ls_valdatax, ls_warehousex, ls_stortypedx.
Clear: ls_materialdescription, ls_unitsofmeasure, ls_unitsofmeasurex, ls_materiallongtext, ls_taxclassifications.

REFRESH: LT_head, LT_client, LT_plantdata, lt_salesdata, lt_forecast, lt_plangdata, lt_stlocdata.
REFRESH: LT_clientx, LT_plantdatax, lt_salesdatax, lt_forecastx, lt_plangdatax, lt_stlocdatax.
REFRESH: lt_valdata, lt_warehouse, lt_stortyped.
REFRESH: lt_valdatax, lt_warehousex, lt_stortypedx.
REFRESH: lt_materialdescription, lt_unitsofmeasure, lt_unitsofmeasurex, lt_materiallongtext, lt_taxclassifications.

***************** fill structures

        ls_mlgn-MATNR = gs_datatab_mlgn-MATNR.
        ls_mlgn-LGNUM = gs_datatab_mlgn-LGNUM.
        ls_mlgn-LGBKZ = gs_datatab_mlgn-LGBKZ.
        ls_mlgn-LTKZE = gs_datatab_mlgn-LTKZE.
        ls_mlgn-LTKZA = gs_datatab_mlgn-LTKZA.
        Modify mlgn from ls_mlgn.
        Commit work.
      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "mlgn
***************mlgn

************* marm
If rb_marm = 'X'.
  IF gt_work_tab_marm[] IS NOT INITIAL.
    LOOP AT gt_work_tab_marm INTO gs_work_tab_marm.
      CLEAR: gs_datatab_marm.
      IF gs_work_tab_marm-matnr IS INITIAL.
        CONTINUE.
      ENDIF.
      MOVE-CORRESPONDING gs_work_tab_marm TO gs_datatab_marm.
      APPEND gs_datatab_marm TO gt_datatab_marm.
    ENDLOOP.
    SORT gt_datatab_marm BY matnr.

"create materials
      LOOP AT gt_datatab_marm INTO gs_datatab_marm.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_marm-matnr
            IMPORTING
              output = gs_datatab_marm-matnr.

"rerfesh all tables
CLEAR: LS_head, LS_client, LS_plantdata, ls_salesdata, ls_forecast,ls_plangdata, ls_stlocdata.
CLEAR: LS_clientx, LS_plantdatax, ls_salesdatax, ls_forecastx, ls_plangdatax, ls_stlocdatax.
Clear: ls_valdata, ls_warehouse, ls_stortyped.
Clear: ls_valdatax, ls_warehousex, ls_stortypedx.
Clear: ls_materialdescription, ls_unitsofmeasure, ls_unitsofmeasurex, ls_materiallongtext, ls_taxclassifications.

REFRESH: LT_head, LT_client, LT_plantdata, lt_salesdata, lt_forecast, lt_plangdata, lt_stlocdata.
REFRESH: LT_clientx, LT_plantdatax, lt_salesdatax, lt_forecastx, lt_plangdatax, lt_stlocdatax.
REFRESH: lt_valdata, lt_warehouse, lt_stortyped.
REFRESH: lt_valdatax, lt_warehousex, lt_stortypedx.
REFRESH: lt_materialdescription, lt_unitsofmeasure, lt_unitsofmeasurex, lt_materiallongtext, lt_taxclassifications.

***************** fill structures

"fill tab_head
ls_head-material = gs_datatab_marm-MATNR.
"ls_head-ind_sector = gs_datatab-MBRSH.
"ls_head-matl_type = gs_datatab-MTART.
"ls_head-basic_view = 'X'.
"ls_head-sales_view = 'X'.
"ls_head-purchase_view = 'X'.
"ls_head-mrp_view = 'X'.
"ls_head-quality_view = 'X'.
"ls_head-forecast_view = 'X'.
"ls_head-work_sched_view_view = 'X'.
"ls_head-prt_view = 'X'.
"ls_head-storage_view = 'X'.
"ls_head-warehouse_view = 'X'.
"ls_head-account_view = 'X'.
"ls_head-cost_view_view = 'X'.
Append ls_head to lt_head.

ls_unitsofmeasure-ALT_UNIT = gs_datatab_marm-MEINH.
ls_unitsofmeasure-NUMERATOR = gs_datatab_marm-UMREZ.
ls_unitsofmeasure-DENOMINATR = gs_datatab_marm-UMREN.
ls_unitsofmeasure-LENGTH = gs_datatab_marm-LAENG.
ls_unitsofmeasure-WIDTH = gs_datatab_marm-BREIT.
ls_unitsofmeasure-HEIGHT = gs_datatab_marm-HOEHE.
ls_unitsofmeasure-UNIT_DIM = gs_datatab_marm-MEABM.
ls_unitsofmeasure-VOLUME = gs_datatab_marm-VOLUM.
ls_unitsofmeasure-VOLUMEUNIT = gs_datatab_marm-VOLEH.
ls_unitsofmeasure-GROSS_WT = gs_datatab_marm-BRGEW.
ls_unitsofmeasure-UNIT_OF_WT = gs_datatab_marm-GEWEI.
Append ls_unitsofmeasure to lt_unitsofmeasure.

ls_unitsofmeasurex-ALT_UNIT = gs_datatab_marm-MEINH.
ls_unitsofmeasurex-NUMERATOR = 'X'.
ls_unitsofmeasurex-DENOMINATR = 'X'.
ls_unitsofmeasurex-LENGTH = 'X'.
ls_unitsofmeasurex-WIDTH = 'X'.
ls_unitsofmeasurex-HEIGHT = 'X'.
ls_unitsofmeasurex-UNIT_DIM = 'X'.
ls_unitsofmeasurex-VOLUME = 'X'.
ls_unitsofmeasurex-VOLUMEUNIT = 'X'.
ls_unitsofmeasurex-GROSS_WT = 'X'.
ls_unitsofmeasurex-UNIT_OF_WT = 'X'.
Append ls_unitsofmeasurex to lt_unitsofmeasurex.

"      lt_materiallongtext type table of bapi_mltx.
"      ls_materiallongtext like line of lt_materiallongtext.
"      lt_taxclassifications type table of bapi_mlan.
"      ls_taxclassifications like line of lt_taxclassifications.


"create material
         CALL FUNCTION 'BAPI_MATERIAL_SAVEDATA'
           EXPORTING
             headdata             = ls_head
"             clientdata           = ls_client
"             clientdatax          = ls_clientx
"             plantdata            = ls_plantdata
"             plantdatax           = ls_plantdatax
"             forecastparameters   = tab_forecast
"             forecastparametersx  = tab_forecastx
"             planningdata         = tab_plangdata
"             planningdatax        = tab_plangdatax
"             storagelocationdata  = tab_stlocdata
"             storagelocationdatax = tab_stlocdatax
"             valuationdata        = ls__valdata
"             valuationdatax       = ls__valdatax
"             warehousenumberdata  = tab_warehouse
"             warehousenumberdatax = tab_warehousex
"             salesdata            = ls_salesdata
"             salesdatax           = ls_salesdatax
"             storagetypedata      = tab_stortyped
"             storagetypedatax     = tab_stortypedx
*            FLAG_ONLINE          = ' '
*            FLAG_CAD_CALL        = ' '
*            NO_DEQUEUE           = ' '
           IMPORTING
             return               = tab_return
           TABLES
"              materialdescription  = lt_materialdescription
             unitsofmeasure       = lt_unitsofmeasure
             unitsofmeasurex      = lt_unitsofmeasurex
*            INTERNATIONALARTNOS  =
"             materiallongtext     = lt_longtexts[]
"             taxclassifications   = lt_taxclasif_new[]
             returnmessages       = tab_return_msgs[]
*            PRTDATA              =
*            PRTDATAX             =
*            EXTENSIONIN          =
*            EXTENSIONINX         =
.
        IF sy-subrc = 0.
          CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
            EXPORTING
              wait = 'X'
*               IMPORTING
*             RETURN        =
            .
        ELSE.
          CALL FUNCTION 'BAPI_TRANSACTION_ROLLBACK'
*           IMPORTING
*             RETURN        =
            .
        ENDIF.
      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "marm
***************marm

************* mlan
If rb_mlan = 'X'.
  IF gt_work_tab_mlan[] IS NOT INITIAL.
    LOOP AT gt_work_tab_mlan INTO gs_work_tab_mlan.
      CLEAR: gs_datatab_mlan.
      IF gs_work_tab_mlan-matnr IS INITIAL.
        CONTINUE.
      ENDIF.
      MOVE-CORRESPONDING gs_work_tab_mlan TO gs_datatab_mlan.
      APPEND gs_datatab_mlan TO gt_datatab_mlan.
    ENDLOOP.
    SORT gt_datatab_mlan BY matnr.

"create materials
      LOOP AT gt_datatab_mlan INTO gs_datatab_mlan.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_mlan-matnr
            IMPORTING
              output = gs_datatab_mlan-matnr.

"rerfesh all tables
CLEAR: LS_head, LS_client, LS_plantdata, ls_salesdata, ls_forecast,ls_plangdata, ls_stlocdata.
CLEAR: LS_clientx, LS_plantdatax, ls_salesdatax, ls_forecastx, ls_plangdatax, ls_stlocdatax.
Clear: ls_valdata, ls_warehouse, ls_stortyped.
Clear: ls_valdatax, ls_warehousex, ls_stortypedx.
Clear: ls_materialdescription, ls_unitsofmeasure, ls_unitsofmeasurex, ls_materiallongtext, ls_taxclassifications.

REFRESH: LT_head, LT_client, LT_plantdata, lt_salesdata, lt_forecast, lt_plangdata, lt_stlocdata.
REFRESH: LT_clientx, LT_plantdatax, lt_salesdatax, lt_forecastx, lt_plangdatax, lt_stlocdatax.
REFRESH: lt_valdata, lt_warehouse, lt_stortyped.
REFRESH: lt_valdatax, lt_warehousex, lt_stortypedx.
REFRESH: lt_materialdescription, lt_unitsofmeasure, lt_unitsofmeasurex, lt_materiallongtext, lt_taxclassifications.

***************** fill structures

"fill tab_head
ls_head-material = gs_datatab_mlan-MATNR.
"ls_head-ind_sector = gs_datatab-MBRSH.
"ls_head-matl_type = gs_datatab-MTART.
"ls_head-basic_view = 'X'.
"ls_head-sales_view = 'X'.
"ls_head-purchase_view = 'X'.
"ls_head-mrp_view = 'X'.
"ls_head-quality_view = 'X'.
"ls_head-forecast_view = 'X'.
"ls_head-work_sched_view_view = 'X'.
"ls_head-prt_view = 'X'.
"ls_head-storage_view = 'X'.
"ls_head-warehouse_view = 'X'.
"ls_head-account_view = 'X'.
"ls_head-cost_view_view = 'X'.
Append ls_head to lt_head.

ls_taxclassifications-DEPCOUNTRY = gs_datatab_mlan-ALAND.
ls_taxclassifications-TAXCLASS_1 = gs_datatab_mlan-TAXM1.
ls_taxclassifications-TAXCLASS_2 = gs_datatab_mlan-TAXM2.
ls_taxclassifications-TAX_IND = gs_datatab_mlan-TAXIM.
Append ls_taxclassifications to lt_taxclassifications.

"      lt_materiallongtext type table of bapi_mltx.
"      ls_materiallongtext like line of lt_materiallongtext.

"create material
         CALL FUNCTION 'BAPI_MATERIAL_SAVEDATA'
           EXPORTING
             headdata             = ls_head
"             clientdata           = ls_client
"             clientdatax          = ls_clientx
"             plantdata            = ls_plantdata
"             plantdatax           = ls_plantdatax
"             forecastparameters   = tab_forecast
"             forecastparametersx  = tab_forecastx
"             planningdata         = tab_plangdata
"             planningdatax        = tab_plangdatax
"             storagelocationdata  = tab_stlocdata
"             storagelocationdatax = tab_stlocdatax
"             valuationdata        = ls__valdata
"             valuationdatax       = ls__valdatax
"             warehousenumberdata  = tab_warehouse
"             warehousenumberdatax = tab_warehousex
"             salesdata            = ls_salesdata
"             salesdatax           = ls_salesdatax
"             storagetypedata      = tab_stortyped
"             storagetypedatax     = tab_stortypedx
*            FLAG_ONLINE          = ' '
*            FLAG_CAD_CALL        = ' '
*            NO_DEQUEUE           = ' '
           IMPORTING
             return               = tab_return
           TABLES
"              materialdescription  = lt_materialdescription
"             unitsofmeasure       = lt_units_o_m_new[]
"             unitsofmeasurex      = lt_units_o_m_newx[]
*            INTERNATIONALARTNOS  =
"             materiallongtext     = lt_longtexts[]
             taxclassifications   = lt_taxclassifications
             returnmessages       = tab_return_msgs[]
*            PRTDATA              =
*            PRTDATAX             =
*            EXTENSIONIN          =
*            EXTENSIONINX         =
.
        IF sy-subrc = 0.
          CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
            EXPORTING
              wait = 'X'
*               IMPORTING
*             RETURN        =
            .
        ELSE.
          CALL FUNCTION 'BAPI_TRANSACTION_ROLLBACK'
*           IMPORTING
*             RETURN        =
            .
        ENDIF.
      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "mlan
***************mlan

************* mland
If rb_mland = 'X'.
  IF gt_work_tab_mlan[] IS NOT INITIAL.
    LOOP AT gt_work_tab_mlan INTO gs_work_tab_mlan.
      CLEAR: gs_datatab_mlan.
      IF gs_work_tab_mlan-matnr IS INITIAL.
        CONTINUE.
      ENDIF.
      MOVE-CORRESPONDING gs_work_tab_mlan TO gs_datatab_mlan.
      APPEND gs_datatab_mlan TO gt_datatab_mlan.
    ENDLOOP.
    SORT gt_datatab_mlan BY matnr.

"create materials
      LOOP AT gt_datatab_mlan INTO gs_datatab_mlan.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_mlan-matnr
            IMPORTING
              output = gs_datatab_mlan-matnr.
        Clear: ls_mlan.
        ls_mlan-matnr = gs_datatab_mlan-MATNR.
        ls_mlan-aland = gs_datatab_mlan-ALAND.
        ls_mlan-taxm1 = gs_datatab_mlan-TAXM1.
        ls_mlan-taxm2 = gs_datatab_mlan-TAXM2.
        ls_mlan-taxim = gs_datatab_mlan-TAXIM.
        Modify mlan from ls_mlan.
        Commit work.

      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "mland
***************mland



************* mltx
If rb_mltx = 'X'.
  Refresh: lt_mara.

  IF gt_work_tab_mltx[] IS NOT INITIAL.
    LOOP AT gt_work_tab_mltx INTO gs_work_tab_mltx.
      CLEAR: gs_datatab_mltx.
      MOVE-CORRESPONDING gs_work_tab_mltx TO gs_datatab_mltx.
      APPEND gs_datatab_mltx TO gt_datatab_mltx.
    ENDLOOP.
    SORT gt_datatab_mltx BY tdobject tdname tdid tdspras.

"get unique materials.
      LOOP AT gt_datatab_mltx INTO gs_datatab_mltx.
        Move gs_datatab_mltx-tdrefname to ls_mara-matnr.
        Append ls_mara to lt_mara.
      Endloop.

      Sort lt_mara by matnr ascending.
      Delete ADJACENT DUPLICATES FROM lt_mara comparing matnr.

      Loop at lt_mara into ls_mara.
        REFRESH: lt_materiallongtext.

    "create materials
          LOOP AT gt_datatab_mltx INTO gs_datatab_mltx
            where tdrefname = ls_mara-matnr.

 "************* fill structures

            "fill tab_head
            CLEAR: LS_head.
            REFRESH: LT_head.
            Move gs_datatab_mltx-tdrefname to ls_head-material.
            Append ls_head to lt_head.

            Clear: ls_materiallongtext.
            ls_materiallongtext-APPLOBJECT = gs_datatab_mltx-tdobject.
            ls_materiallongtext-TEXT_NAME = gs_datatab_mltx-tdname.
            ls_materiallongtext-TEXT_ID = gs_datatab_mltx-tdid.
            ls_materiallongtext-LANGU = gs_datatab_mltx-tdspras.
            ls_materiallongtext-TEXT_LINE = gs_datatab_mltx-tdline.
            Append ls_materiallongtext to lt_materiallongtext.
          ENDLOOP. "gt_datatab.

    "create material
             CALL FUNCTION 'BAPI_MATERIAL_SAVEDATA'
               EXPORTING
                 headdata             = ls_head
    "             clientdata           = ls_client
    "             clientdatax          = ls_clientx
    "             plantdata            = ls_plantdata
    "             plantdatax           = ls_plantdatax
    "             forecastparameters   = tab_forecast
    "             forecastparametersx  = tab_forecastx
    "             planningdata         = tab_plangdata
    "             planningdatax        = tab_plangdatax
    "             storagelocationdata  = tab_stlocdata
    "             storagelocationdatax = tab_stlocdatax
    "             valuationdata        = ls__valdata
    "             valuationdatax       = ls__valdatax
    "             warehousenumberdata  = tab_warehouse
    "             warehousenumberdatax = tab_warehousex
    "             salesdata            = ls_salesdata
    "             salesdatax           = ls_salesdatax
    "             storagetypedata      = tab_stortyped
    "             storagetypedatax     = tab_stortypedx
*                FLAG_ONLINE          = ' '
*                FLAG_CAD_CALL        = ' '
*                NO_DEQUEUE           = ' '
               IMPORTING
                 return               = tab_return
               TABLES
    "              materialdescription  = lt_materialdescription
    "             unitsofmeasure       = lt_units_o_m_new[]
    "             unitsofmeasurex      = lt_units_o_m_newx[]
*                INTERNATIONALARTNOS  =
                 materiallongtext     = lt_materiallongtext[]
    "             taxclassifications   = ls_taxclassifications[]
                 returnmessages       = tab_return_msgs
*                PRTDATA              =
*                PRTDATAX             =
*                EXTENSIONIN          =
*                EXTENSIONINX         =
    .
            IF sy-subrc = 0.
              CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
                EXPORTING
                  wait = 'X'
*                   IMPORTING
*                 RETURN        =
                .
            ELSE.
              CALL FUNCTION 'BAPI_TRANSACTION_ROLLBACK'
*               IMPORTING
*                 RETURN        =
                .
            ENDIF.

        Endloop. "mara

  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "mltx
***************mltx

************* ausp
If rb_ausp = 'X'.
  Refresh: lt_mara.

  IF gt_work_tab_ausp[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ausp INTO gs_work_tab_ausp.
      CLEAR: gs_datatab_ausp.
      MOVE-CORRESPONDING gs_work_tab_ausp TO gs_datatab_ausp.
      APPEND gs_datatab_ausp TO gt_datatab_ausp.
    ENDLOOP.
    SORT gt_datatab_ausp BY matnr.
    Delete gt_datatab_ausp where atwrt is initial.

    "create classes
    LOOP AT gt_datatab_ausp INTO gs_datatab_ausp.

      Clear: lv_atinn, lv_class.
      Select single atinn into lv_atinn
        from cabn
        where atnam = gs_datatab_ausp-atnam.
      Select single class into lv_class
        from KLAH
        where klart =  gs_datatab_ausp-klart.

 "************* fill structures


       CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
         EXPORTING
          input  = gs_datatab_ausp-matnr
         IMPORTING
          output = gs_datatab_ausp-matnr.

       Move gs_datatab_ausp-matnr to LV_OBJECTKEY.
       Move lv_class to LV_CLASSNUM.
       Move gs_datatab_ausp-klart to LV_CLASSTYPE.
       LV_OBJECTTABLE = 'MARA'.

       Refresh: LT_ALLOCVALUESNUMNEW, LT_ALLOCVALUESCHARNEW, LT_ALLOCVALUESCURRNEW.
       Clear: LS_ALLOCVALUESNUMNEW, LS_ALLOCVALUESCHARNEW,  LS_ALLOCVALUESCURRNEW.

"       LS_ALLOCVALUESNUMNEW-charact = 'Y_STANDARD'.
"       LS_ALLOCVALUESNUMNEW-value_char = 'S'.
"       APPEND LS_ALLOCVALUESNUMNEW TO LT_ALLOCVALUESNUMNEW.

       Move gs_datatab_ausp-atnam to LS_ALLOCVALUESCHARNEW-charact.
       Move gs_datatab_ausp-atwrt to LS_ALLOCVALUESCHARNEW-value_char.
       APPEND LS_ALLOCVALUESCHARNEW TO LT_ALLOCVALUESCHARNEW.

"       LS_ALLOCVALUESCURRNEW-charact = 'Y_STANDARD'.
"       LS_ALLOCVALUESCURRNEW-value_char = 'S'.
"       APPEND LS_ALLOCVALUESCURRNEW TO LT_ALLOCVALUESCURRNEW.

       CALL FUNCTION 'BAPI_OBJCL_CHANGE'
          EXPORTING
            objectkey    = lv_objectkey
            objecttable  = LV_OBJECTTABLE
            classnum     = LV_CLASSNUM
            classtype    = LV_CLASSTYPE
          TABLES
            allocvaluesnumnew = LT_ALLOCVALUESNUMNEW
            allocvaluescharnew = LT_ALLOCVALUESCHARNEW
            allocvaluescurrnew = LT_ALLOCVALUESCURRNEW
            return = gt_return.
          COMMIT WORK.

        Endloop. "gt_datatab_ausp

  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "ausp
***************ausp



************* mpop
If rb_fore = 'X'.
  Refresh: lt_mara.

  IF gt_work_tab_mpop[] IS NOT INITIAL.
    LOOP AT gt_work_tab_mpop INTO gs_work_tab_mpop.
      CLEAR: gs_datatab_mpop.
      MOVE-CORRESPONDING gs_work_tab_mpop TO gs_datatab_mpop.
      APPEND gs_datatab_mpop TO gt_datatab_mpop.
    ENDLOOP.

    "create materials
          LOOP AT gt_datatab_mpop INTO gs_datatab_mpop.

 "************* fill structures

            "fill tab_head
            CLEAR: LS_head, ls_forecast, ls_forecastx, tab_forecast, tab_forecastx.
            REFRESH: LT_head, lt_forecast, lt_forecastx.

            Move gs_datatab_mpop-matnr to ls_head-material.
            ls_head-FORECAST_VIEW = 'X'.
            Append ls_head to lt_head.

            " fill mpop
            Move gs_datatab_mpop-werks to tab_forecast-plant.
            Move gs_datatab_mpop-propr to tab_forecast-FORE_PROF.
            Move gs_datatab_mpop-modaw to tab_forecast-MODEL_SI.
            Move gs_datatab_mpop-modav to tab_forecast-MODEL_SP.
            Move gs_datatab_mpop-kzpar to tab_forecast-PARAM_OPT.
            Move gs_datatab_mpop-opgra to tab_forecast-OPTIM_LEV.
            Move gs_datatab_mpop-kzini to tab_forecast-INITIALIZE.
            Move gs_datatab_mpop-prmod to tab_forecast-FORE_MODEL.
            Move gs_datatab_mpop-alpha to tab_forecast-ALPHA_FACT.
            Move gs_datatab_mpop-beta1 to tab_forecast-BETA_FACT.
            Move gs_datatab_mpop-gamma to tab_forecast-GAMMA_FACT.
            Move gs_datatab_mpop-delta to tab_forecast-DELTA_FACT.
            Move gs_datatab_mpop-siggr to tab_forecast-TRACKLIMIT.
            Move gs_datatab_mpop-prdat to tab_forecast-FORE_DATE.
            Move gs_datatab_mpop-peran to tab_forecast-HIST_VALS.
            Move gs_datatab_mpop-perin to tab_forecast-INIT_PDS.
            Move gs_datatab_mpop-perio to tab_forecast-SEASON_PDS.
            Move gs_datatab_mpop-perex to tab_forecast-EXPOST_PDS.
            Move gs_datatab_mpop-anzpr to tab_forecast-FORE_PDS.
            Move gs_datatab_mpop-fimon to tab_forecast-FIXED_PDS.
            Move gs_datatab_mpop-gewgr to tab_forecast-WTG_GROUP.

            Move gs_datatab_mpop-werks to tab_forecastx-plant.
            Move 'X' to tab_forecastx-FORE_PROF.
            Move 'X' to tab_forecastx-MODEL_SI.
            Move 'X' to tab_forecastx-MODEL_SP.
            Move 'X' to tab_forecastx-PARAM_OPT.
            Move 'X' to tab_forecastx-OPTIM_LEV.
            Move 'X' to tab_forecastx-INITIALIZE.
            Move 'X' to tab_forecastx-FORE_MODEL.
            Move 'X' to tab_forecastx-ALPHA_FACT.
            Move 'X' to tab_forecastx-BETA_FACT.
            Move 'X' to tab_forecastx-GAMMA_FACT.
            Move 'X' to tab_forecastx-DELTA_FACT.
            Move 'X' to tab_forecastx-TRACKLIMIT.
            Move 'X' to tab_forecastx-FORE_DATE.
            Move 'X' to tab_forecastx-HIST_VALS.
            Move 'X' to tab_forecastx-INIT_PDS.
            Move 'X' to tab_forecastx-SEASON_PDS.
            Move 'X' to tab_forecastx-EXPOST_PDS.
            Move 'X' to tab_forecastx-FORE_PDS.
            Move 'X' to tab_forecastx-FIXED_PDS.
            Move 'X' to tab_forecastx-WTG_GROUP.

    "create material
             CALL FUNCTION 'BAPI_MATERIAL_SAVEDATA'
               EXPORTING
                 headdata             = ls_head
    "             clientdata           = ls_client
    "             clientdatax          = ls_clientx
    "             plantdata            = ls_plantdata
    "             plantdatax           = ls_plantdatax
                 forecastparameters   = tab_forecast
                 forecastparametersx  = tab_forecastx
    "             planningdata         = tab_plangdata
    "             planningdatax        = tab_plangdatax
    "             storagelocationdata  = tab_stlocdata
    "             storagelocationdatax = tab_stlocdatax
    "             valuationdata        = ls__valdata
    "             valuationdatax       = ls__valdatax
    "             warehousenumberdata  = tab_warehouse
    "             warehousenumberdatax = tab_warehousex
    "             salesdata            = ls_salesdata
    "             salesdatax           = ls_salesdatax
    "             storagetypedata      = tab_stortyped
    "             storagetypedatax     = tab_stortypedx
*                FLAG_ONLINE          = ' '
*                FLAG_CAD_CALL        = ' '
*                NO_DEQUEUE           = ' '
               IMPORTING
                 return               = tab_return
               TABLES
    "              materialdescription  = lt_materialdescription
    "             unitsofmeasure       = lt_units_o_m_new[]
    "             unitsofmeasurex      = lt_units_o_m_newx[]
*                INTERNATIONALARTNOS  =
    "             materiallongtext     = lt_materiallongtext[]
    "             taxclassifications   = ls_taxclassifications[]
                 returnmessages       = tab_return_msgs
*                PRTDATA              =
*                PRTDATAX             =
*                EXTENSIONIN          =
*                EXTENSIONINX         =
    .
            IF sy-subrc = 0.
              CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
                EXPORTING
                  wait = 'X'
*                   IMPORTING
*                 RETURN        =
                .
            ELSE.
              CALL FUNCTION 'BAPI_TRANSACTION_ROLLBACK'
*               IMPORTING
*                 RETURN        =
                .
            ENDIF.
          ENDLOOP.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "mpop
***************mpop

************* prop
If rb_prop = 'X'.
  IF gt_work_tab_prop[] IS NOT INITIAL.
    LOOP AT gt_work_tab_prop INTO gs_work_tab_prop.
      CLEAR: gs_datatab_prop.
      MOVE-CORRESPONDING gs_work_tab_prop TO gs_datatab_prop.
      APPEND gs_datatab_prop TO gt_datatab_prop.
    ENDLOOP.

"create materials
      LOOP AT gt_datatab_prop INTO gs_datatab_prop.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_prop-pnum1
            IMPORTING
              output = gs_datatab_prop-pnum1.

          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_prop-pnum2
            IMPORTING
              output = gs_datatab_prop-pnum2.

        Clear: ls_prop.
          move gs_datatab_prop-PNUM1 to ls_prop-PNUM1.
          move gs_datatab_prop-HSNUM to ls_prop-HSNUM.
          move gs_datatab_prop-VERSP to ls_prop-VERSP.
          move gs_datatab_prop-PNUM2 to ls_prop-PNUM2.
          move gs_datatab_prop-PROPR to ls_prop-PROPR.
          move gs_datatab_prop-MODAW to ls_prop-MODAW.
          move gs_datatab_prop-MODAV to ls_prop-MODAV.
          move gs_datatab_prop-KZPAR to ls_prop-KZPAR.
          move gs_datatab_prop-OPGRA to ls_prop-OPGRA.
          move gs_datatab_prop-KZINI to ls_prop-KZINI.
          move gs_datatab_prop-PRMOD to ls_prop-PRMOD.
          move gs_datatab_prop-ALPHA to ls_prop-ALPHA.
          move gs_datatab_prop-BETA1 to ls_prop-BETA1.
          move gs_datatab_prop-GAMMA to ls_prop-GAMMA.
          move gs_datatab_prop-DELTA to ls_prop-DELTA.
          move gs_datatab_prop-EPSIL to ls_prop-EPSIL.
          move gs_datatab_prop-SIGGR to ls_prop-SIGGR.
          move gs_datatab_prop-PRDAT to ls_prop-PRDAT.
          move gs_datatab_prop-PERAN to ls_prop-PERAN.
          move gs_datatab_prop-PERIN to ls_prop-PERIN.
          move gs_datatab_prop-PERIO to ls_prop-PERIO.
          move gs_datatab_prop-PEREX to ls_prop-PEREX.
          move gs_datatab_prop-ANZPR to ls_prop-ANZPR.
          move gs_datatab_prop-FIMON to ls_prop-FIMON.
        Modify prop from ls_prop.
        Commit work.

      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "prop
***************prop

************* mapr
If rb_mapr = 'X'.
  IF gt_work_tab_mapr[] IS NOT INITIAL.
    LOOP AT gt_work_tab_mapr INTO gs_work_tab_mapr.
      CLEAR: gs_datatab_mapr.

      MOVE-CORRESPONDING gs_work_tab_mapr TO gs_datatab_mapr.
      APPEND gs_datatab_mapr TO gt_datatab_mapr.
    ENDLOOP.

"create materials
      LOOP AT gt_datatab_mapr INTO gs_datatab_mapr.

          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_mapr-matnr
            IMPORTING
              output = gs_datatab_mapr-matnr.

        Clear: ls_mapr.
        ls_mapr-werks = gs_datatab_mapr-WERKS.
        ls_mapr-matnr = gs_datatab_mapr-MATNR.
        ls_mapr-pnum1 = gs_datatab_mapr-PNUM1.
        ls_mapr-perkz = gs_datatab_mapr-PERKZ.
        ls_mapr-periv = gs_datatab_mapr-PERIV.
        ls_mapr-datum = gs_datatab_mapr-DATUM.
        ls_mapr-uzeit = gs_datatab_mapr-UZEIT.
         Modify mapr from ls_mapr.
        Commit work.

      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "mapr
***************mapr


************* qmat
If rb_qmat = 'X'.
  IF gt_work_tab_qmat[] IS NOT INITIAL.
    LOOP AT gt_work_tab_qmat INTO gs_work_tab_qmat.
      CLEAR: gs_datatab_qmat.

      MOVE-CORRESPONDING gs_work_tab_qmat TO gs_datatab_qmat.
      APPEND gs_datatab_qmat TO gt_datatab_qmat.
    ENDLOOP.

"create materials
      LOOP AT gt_datatab_qmat INTO gs_datatab_qmat.

          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_qmat-matnr
            IMPORTING
              output = gs_datatab_qmat-matnr.

        Clear: ls_qmat.

        LS_QMAT-ART = gs_datatab_qmat-art.
        LS_QMAT-MATNR = gs_datatab_qmat-matnr.
        LS_QMAT-WERKS = gs_datatab_qmat-werks.
        LS_QMAT-PPL = gs_datatab_qmat-ppl.
        LS_QMAT-APP = gs_datatab_qmat-app.
        LS_QMAT-MER = gs_datatab_qmat-mer.
        LS_QMAT-INSMK = gs_datatab_qmat-INSMK.
        LS_QMAT-AVE = gs_datatab_qmat-ave.
        LS_QMAT-HPZ = gs_datatab_qmat-hpz.
        LS_QMAT-DYN = gs_datatab_qmat-dyn.
        LS_QMAT-EIN = gs_datatab_qmat-ein.
        LS_QMAT-MPDAU = gs_datatab_qmat-mpdau.
        LS_QMAT-qkzverf = gs_datatab_qmat-qkzverf.
        LS_QMAT-qpmat = gs_datatab_qmat-qpmat.
        LS_QMAT-aktiv = gs_datatab_qmat-aktiv.

         Modify qmat from ls_qmat.
        Commit work.

      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "qmat
***************qmat

************* mvke
If rb_mvke = 'X'.
  IF gt_work_tab_mvke[] IS NOT INITIAL.
    LOOP AT gt_work_tab_mvke INTO gs_work_tab_mvke.
      CLEAR: gs_datatab_mvke.

      MOVE-CORRESPONDING gs_work_tab_mvke TO gs_datatab_mvke.
      APPEND gs_datatab_mvke TO gt_datatab_mvke.
    ENDLOOP.

"create materials
      LOOP AT gt_datatab_mvke INTO gs_datatab_mvke.

          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_mvke-matnr
            IMPORTING
              output = gs_datatab_mvke-matnr.

          Clear: ls_mvke.
          Select single * into ls_mvke
            from mvke
            where matnr = gs_datatab_mvke-matnr
            and vkorg = gs_datatab_mvke-vkorg
            and vtweg = gs_datatab_mvke-vtweg.
            If sy-subrc = 0.
              ls_mvke-mtpos = gs_datatab_mvke-mtpos.
              ls_mvke-dwerk = gs_datatab_mvke-dwerk.
              Modify mvke from ls_mvke.
              Commit work.
            Endif.

      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "mvke
***************mvke

************* marc
If rb_nmat = 'X'.
  IF gt_work_tab_marc[] IS NOT INITIAL.
    LOOP AT gt_work_tab_marc INTO gs_work_tab_marc.
      CLEAR: gs_datatab_marc.

      MOVE-CORRESPONDING gs_work_tab_marc TO gs_datatab_marc.
      APPEND gs_datatab_marc TO gt_datatab_marc.
    ENDLOOP.

"create materials
      LOOP AT gt_datatab_marc INTO gs_datatab_marc.

          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_marc-matnr
            IMPORTING
              output = gs_datatab_marc-matnr.

          Clear: ls_marc.
          Select single * into ls_marc
            from marc
            where matnr = gs_datatab_marc-matnr
            and werks = gs_datatab_marc-werks.
            If sy-subrc = 0.
              ls_marc-mmsta = gs_datatab_marc-mmsta.
              ls_marc-ausdt = gs_datatab_marc-ausdt.
              ls_marc-nfmat = gs_datatab_marc-nfmat.
              Modify marc from ls_marc.
              Commit work.
            Endif.

      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "marc
***************marc

************* marcn
If rb_marc = 'X'.
  IF gt_work_tab_marcn[] IS NOT INITIAL.
    LOOP AT gt_work_tab_marcn INTO gs_work_tab_marcn.
      CLEAR: gs_datatab_marcn.

      MOVE-CORRESPONDING gs_work_tab_marcn TO gs_datatab_marcn.
      APPEND gs_datatab_marcn TO gt_datatab_marcn.
    ENDLOOP.

"create materials
      LOOP AT gt_datatab_marcn INTO gs_datatab_marcn.

          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_marcn-matnr
            IMPORTING
              output = gs_datatab_marcn-matnr.

          Clear: ls_marc.
          Select single * into ls_marc
            from marc
            where matnr = gs_datatab_marcn-matnr
            and werks = gs_datatab_marcn-werks.
            If sy-subrc = 0.
              ls_marc-ncost = gs_datatab_marcn-ncost.
              ls_marc-awsls = gs_datatab_marcn-awsls.
              If gs_datatab_marcn-stawn is not initial.
                 ls_marc-stawn = gs_datatab_marcn-stawn.
              Endif.
              If gs_datatab_marcn-herkl is not initial.
                 ls_marc-herkl = gs_datatab_marcn-herkl.
              Endif.
              If gs_datatab_marcn-ladgr is not initial.
                 ls_marc-ladgr = gs_datatab_marcn-ladgr.
              Endif.
              If gs_datatab_marcn-mtvfp is not initial.
                 ls_marc-mtvfp = gs_datatab_marcn-mtvfp.
              Endif.

              Modify marc from ls_marc.
              Commit work.
            Endif.

      ENDLOOP. "gt_datatab.
  ELSE."GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
 Endif. "marcn
***************marcn



FORM BAPIRETURN_FILL_1 USING    P_SY_MSGID LIKE SY-MSGID
                                P_SY_MSGNO LIKE SY-MSGNO
                                P_SY_MSGV1 LIKE SY-MSGV1
                                P_SY_MSGV2 LIKE SY-MSGV2
                                P_SY_MSGV3 LIKE SY-MSGV3
                                P_SY_MSGV4 LIKE SY-MSGV4
                       CHANGING P_RETURN1 LIKE BAPIRETURN1.

  CALL FUNCTION 'BALW_BAPIRETURN_GET1'
       EXPORTING
            TYPE       = 'E'
            CL         = P_SY_MSGID
            NUMBER     = P_SY_MSGNO
            PAR1       = P_SY_MSGV1
            PAR2       = P_SY_MSGV2
            PAR3       = P_SY_MSGV3
            PAR4       = P_SY_MSGV4
*         LOG_NO     = ' '
*         LOG_MSG_NO = ' '
        IMPORTING
            BAPIRETURN = P_RETURN1.

  P_RETURN1-MESSAGE_V1 = P_SY_MSGV1.
  P_RETURN1-MESSAGE_V2 = P_SY_MSGV2.
  P_RETURN1-MESSAGE_V3 = P_SY_MSGV3.
  P_RETURN1-MESSAGE_V4 = P_SY_MSGV4.


ENDFORM.                    " BAPIRETURN_FILL_1