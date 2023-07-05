*&---------------------------------------------------------------------*
*& Report Z_HIST_IMPORT
*&---------------------------------------------------------------------*
* Author : David Ellwood               EXTEXTELLWODA
* Date  :  June 2023
* CHG 159
*----------------------------------------------------------------------*
* Preconditions:
*  Excel file with valid data and header line
*
*----------------------------------------------------------------------*
* Short description:
*
*
REPORT Z_HIST_IMPORT.

INCLUDE Z_HIST_IMPORT_TOP.
*INCLUDE Z_HIST_IMPORT_TOP.

INCLUDE Z_HIST_IMPORT_SEL.
*INCLUDE Z_HIST_IMPORT_SEL.


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

******* ACDOCA
if rb_acdo = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_acdoca[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /ACDOCA


******* ADRC
if rb_adrc = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_adrc[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /ADRC


******* AFKO
if rb_afko = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_afko[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /AFKO


******* AFPO
if rb_afpo = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_afpo[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /AFPO


******* AFRU
if rb_afru = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_afru[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /AFRU


******* AFVC
if rb_afvc = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_afvc[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /AFVC


******* AFVU
if rb_afvu = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_afvu[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /AFVU


******* AFVV
if rb_afvv = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_afvv[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /AFVV


******* ANLA
if rb_anla = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_anla[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /ANLA


******* ANLB
if rb_anlb = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_anlb[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /ANLB


******* ANLC
if rb_anlc = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_anlc[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /ANLC


******* ANLP
if rb_anlp = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_anlp[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /ANLP


******* AUFK
if rb_aufk = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_aufk[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /AUFK


******* BKPF
if rb_bkpf = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_bkpf[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /BKPF


******* BSAD_BCK
if rb_bsadb = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_bsad_bck[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /BSAD_BCK


******* BSAK_BCK
if rb_bsakb = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbak[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /BSAK_BCK


******* BSEG
if rb_bseg = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_bseg[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /BSEG


******* COEJ
if rb_coej = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_coej[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /COEJ


******* COST
if rb_cost = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_cost[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /COST


******* CRHD
if rb_crhd = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_crhd[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /CRHD


******* CSSL
if rb_cssl = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_cssl[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /CSSL


******* EKBE
if rb_ekbe = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_ekbe[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /EKBE


******* EKES
if rb_ekes = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_ekes[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /EKES


******* EKET
if rb_eket = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_eket[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /EKET


******* EKKN
if rb_ekkn = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_ekkn[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /EKKN


******* EKKO
if rb_ekko = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_ekko[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /EKKO


******* EKPA
if rb_ekpa = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_ekpa[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /EKPA


******* EKPO
if rb_ekpo = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_ekpo[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /EKPO


******* FPLA
if rb_fpla = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_fpla[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /FPLA


******* FPLT
if rb_fplt = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_fplt[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /FPLT


******* IHPA
if rb_ihpa = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_ihpa[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /IHPA


******* JEST
if rb_jest = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_jest[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /JEST


******* KONV
if rb_konv = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_konv[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /KONV


******* LIKP
if rb_likp = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_likp[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /LIKP


******* LIPS
if rb_lips = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_lips[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /LIPS


******* MKPF
if rb_mkpf = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_mkpf[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /MKPF


******* MLST
if rb_mlst = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_mlst[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /MLST


******* MSEG
if rb_mseg = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_mseg[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /MSEG


******* PRHI
if rb_prhi = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_prhi[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /PRHI


******* PROJ
if rb_proj = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_proj[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /PROJ


******* PROJS
if rb_projs = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_projs[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /PROJS


******* PRPS
if rb_prps = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_prps[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /PRPS


******* PRPSS
if rb_prpss = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_prpss[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /PRPSS


******* QMEL
if rb_qmel = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_qmel[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /QMEL


******* QMFE
if rb_qmfe = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_qmfe[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /QMFE


******* QMSM
if rb_qmsm = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_qmsm[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /QMSM


******* RESB
if rb_resb = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_resb[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /RESB


******* STXH
if rb_stxh = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_stxh[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /STXH


******* STXL
if rb_stxl = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_stxl[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /STXL


******* VBAK
if rb_vbak = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbak[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /VBAK


******* VBAP
if rb_vbap = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbap[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /VBAP


******* VBEP
if rb_vbep = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbep[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /VBEP


******* VBFA
if rb_vbfa = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbfa[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /VBFA


******* VBKD
if rb_vbkd = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbkd[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /VBKD


******* VBPA
if rb_vbpa = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbpa[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /VBPA


******* VBRK
if rb_vbrk = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbrk[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /VBRK


******* VBRP
if rb_vbrp = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbrp[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /VBRP


******* VBUK
if rb_vbuk = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbuk[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /VBUK


******* VBUP
if rb_vbup = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_zold_vbup[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.

    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif.
******* /VBUP

* END-OF-SELECTION.
END-OF-SELECTION.




************************************Create records

************* ACDOCA
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_ACDOCA[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_ACDOCA INTO gs_work_tab_ZOLD_ACDOCA.
      CLEAR: gs_datatab_ZOLD_ACDOCA.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_ACDOCA TO gs_datatab_ZOLD_ACDOCA.
      APPEND gs_datatab_ZOLD_ACDOCA TO gt_datatab_ZOLD_ACDOCA.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_ACDOCA INTO gs_datatab_ZOLD_ACDOCA.
      Move-corresponding gs_datatab_ZOLD_ACDOCA to LS_ACDOCA.
      Modify ZOLD_ACDOCA from LS_ACDOCA.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "ACDOCA
***************ACDOCA

************* ADRC
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_ADRC[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_ADRC INTO gs_work_tab_ZOLD_ADRC.
      CLEAR: gs_datatab_ZOLD_ADRC.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_ADRC TO gs_datatab_ZOLD_ADRC.
      APPEND gs_datatab_ZOLD_ADRC TO gt_datatab_ZOLD_ADRC.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_ADRC INTO gs_datatab_ZOLD_ADRC.
      Move-corresponding gs_datatab_ZOLD_ADRC to LS_ADRC.
      Modify ZOLD_ADRC from LS_ADRC.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "ADRC
***************ADRC

************* AFKO
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_AFKO[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_AFKO INTO gs_work_tab_ZOLD_AFKO.
      CLEAR: gs_datatab_ZOLD_AFKO.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_AFKO TO gs_datatab_ZOLD_AFKO.
      APPEND gs_datatab_ZOLD_AFKO TO gt_datatab_ZOLD_AFKO.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_AFKO INTO gs_datatab_ZOLD_AFKO.
      Move-corresponding gs_datatab_ZOLD_AFKO to LS_AFKO.
      Modify ZOLD_AFKO from LS_AFKO.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "AFKO
***************AFKO

************* AFPO
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_AFPO[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_AFPO INTO gs_work_tab_ZOLD_AFPO.
      CLEAR: gs_datatab_ZOLD_AFPO.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_AFPO TO gs_datatab_ZOLD_AFPO.
      APPEND gs_datatab_ZOLD_AFPO TO gt_datatab_ZOLD_AFPO.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_AFPO INTO gs_datatab_ZOLD_AFPO.
      Move-corresponding gs_datatab_ZOLD_AFPO to LS_AFPO.
      Modify ZOLD_AFPO from LS_AFPO.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "AFPO
***************AFPO

************* AFRU
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_AFRU[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_AFRU INTO gs_work_tab_ZOLD_AFRU.
      CLEAR: gs_datatab_ZOLD_AFRU.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_AFRU TO gs_datatab_ZOLD_AFRU.
      APPEND gs_datatab_ZOLD_AFRU TO gt_datatab_ZOLD_AFRU.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_AFRU INTO gs_datatab_ZOLD_AFRU.
      Move-corresponding gs_datatab_ZOLD_AFRU to LS_AFRU.
      Modify ZOLD_AFRU from LS_AFRU.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "AFRU
***************AFRU

************* AFVC
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_AFVC[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_AFVC INTO gs_work_tab_ZOLD_AFVC.
      CLEAR: gs_datatab_ZOLD_AFVC.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_AFVC TO gs_datatab_ZOLD_AFVC.
      APPEND gs_datatab_ZOLD_AFVC TO gt_datatab_ZOLD_AFVC.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_AFVC INTO gs_datatab_ZOLD_AFVC.
      Move-corresponding gs_datatab_ZOLD_AFVC to LS_AFVC.
      Modify ZOLD_AFVC from LS_AFVC.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "AFVC
***************AFVC

************* AFVU
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_AFVU[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_AFVU INTO gs_work_tab_ZOLD_AFVU.
      CLEAR: gs_datatab_ZOLD_AFVU.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_AFVU TO gs_datatab_ZOLD_AFVU.
      APPEND gs_datatab_ZOLD_AFVU TO gt_datatab_ZOLD_AFVU.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_AFVU INTO gs_datatab_ZOLD_AFVU.
      Move-corresponding gs_datatab_ZOLD_AFVU to LS_AFVU.
      Modify ZOLD_AFVU from LS_AFVU.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "AFVU
***************AFVU

************* AFVV
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_AFVV[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_AFVV INTO gs_work_tab_ZOLD_AFVV.
      CLEAR: gs_datatab_ZOLD_AFVV.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_AFVV TO gs_datatab_ZOLD_AFVV.
      APPEND gs_datatab_ZOLD_AFVV TO gt_datatab_ZOLD_AFVV.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_AFVV INTO gs_datatab_ZOLD_AFVV.
      Move-corresponding gs_datatab_ZOLD_AFVV to LS_AFVV.
      Modify ZOLD_AFVV from LS_AFVV.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "AFVV
***************AFVV

************* ANLA
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_ANLA[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_ANLA INTO gs_work_tab_ZOLD_ANLA.
      CLEAR: gs_datatab_ZOLD_ANLA.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_ANLA TO gs_datatab_ZOLD_ANLA.
      APPEND gs_datatab_ZOLD_ANLA TO gt_datatab_ZOLD_ANLA.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_ANLA INTO gs_datatab_ZOLD_ANLA.
      Move-corresponding gs_datatab_ZOLD_ANLA to LS_ANLA.
      Modify ZOLD_ANLA from LS_ANLA.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "ANLA
***************ANLA

************* ANLB
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_ANLB[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_ANLB INTO gs_work_tab_ZOLD_ANLB.
      CLEAR: gs_datatab_ZOLD_ANLB.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_ANLB TO gs_datatab_ZOLD_ANLB.
      APPEND gs_datatab_ZOLD_ANLB TO gt_datatab_ZOLD_ANLB.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_ANLB INTO gs_datatab_ZOLD_ANLB.
      Move-corresponding gs_datatab_ZOLD_ANLB to LS_ANLB.
      Modify ZOLD_ANLB from LS_ANLB.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "ANLB
***************ANLB

************* ANLC
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_ANLC[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_ANLC INTO gs_work_tab_ZOLD_ANLC.
      CLEAR: gs_datatab_ZOLD_ANLC.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_ANLC TO gs_datatab_ZOLD_ANLC.
      APPEND gs_datatab_ZOLD_ANLC TO gt_datatab_ZOLD_ANLC.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_ANLC INTO gs_datatab_ZOLD_ANLC.
      Move-corresponding gs_datatab_ZOLD_ANLC to LS_ANLC.
      Modify ZOLD_ANLC from LS_ANLC.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "ANLC
***************ANLC

************* ANLP
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_ANLP[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_ANLP INTO gs_work_tab_ZOLD_ANLP.
      CLEAR: gs_datatab_ZOLD_ANLP.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_ANLP TO gs_datatab_ZOLD_ANLP.
      APPEND gs_datatab_ZOLD_ANLP TO gt_datatab_ZOLD_ANLP.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_ANLP INTO gs_datatab_ZOLD_ANLP.
      Move-corresponding gs_datatab_ZOLD_ANLP to LS_ANLP.
      Modify ZOLD_ANLP from LS_ANLP.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "ANLP
***************ANLP

************* AUFK
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_AUFK[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_AUFK INTO gs_work_tab_ZOLD_AUFK.
      CLEAR: gs_datatab_ZOLD_AUFK.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_AUFK TO gs_datatab_ZOLD_AUFK.
      APPEND gs_datatab_ZOLD_AUFK TO gt_datatab_ZOLD_AUFK.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_AUFK INTO gs_datatab_ZOLD_AUFK.
      Move-corresponding gs_datatab_ZOLD_AUFK to LS_AUFK.
      Modify ZOLD_AUFK from LS_AUFK.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "AUFK
***************AUFK

************* BKPF
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_BKPF[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_BKPF INTO gs_work_tab_ZOLD_BKPF.
      CLEAR: gs_datatab_ZOLD_BKPF.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_BKPF TO gs_datatab_ZOLD_BKPF.
      APPEND gs_datatab_ZOLD_BKPF TO gt_datatab_ZOLD_BKPF.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_BKPF INTO gs_datatab_ZOLD_BKPF.
      Move-corresponding gs_datatab_ZOLD_BKPF to LS_BKPF.
      Modify ZOLD_BKPF from LS_BKPF.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "BKPF
***************BKPF

************* BSAD_BCK
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_BSAD_BCK[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_BSAD_BCK INTO gs_work_tab_ZOLD_BSAD_BCK.
      CLEAR: gs_datatab_ZOLD_BSAD_BCK.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_BSAD_BCK TO gs_datatab_ZOLD_BSAD_BCK.
      APPEND gs_datatab_ZOLD_BSAD_BCK TO gt_datatab_ZOLD_BSAD_BCK.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_BSAD_BCK INTO gs_datatab_ZOLD_BSAD_BCK.
      Move-corresponding gs_datatab_ZOLD_BSAD_BCK to LS_BSAD_BCK.
      Modify ZOLD_BSAD_BCK from LS_BSAD_BCK.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "BSAD_BCK
***************BSAD_BCK

************* BSAK_BCK
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_BSAK_BCK[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_BSAK_BCK INTO gs_work_tab_ZOLD_BSAK_BCK.
      CLEAR: gs_datatab_ZOLD_BSAK_BCK.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_BSAK_BCK TO gs_datatab_ZOLD_BSAK_BCK.
      APPEND gs_datatab_ZOLD_BSAK_BCK TO gt_datatab_ZOLD_BSAK_BCK.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_BSAK_BCK INTO gs_datatab_ZOLD_BSAK_BCK.
      Move-corresponding gs_datatab_ZOLD_BSAK_BCK to LS_BSAK_BCK.
      Modify ZOLD_BSAK_BCK from LS_BSAK_BCK.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "BSAK_BCK
***************BSAK_BCK

************* BSEG
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_BSEG[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_BSEG INTO gs_work_tab_ZOLD_BSEG.
      CLEAR: gs_datatab_ZOLD_BSEG.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_BSEG TO gs_datatab_ZOLD_BSEG.
      APPEND gs_datatab_ZOLD_BSEG TO gt_datatab_ZOLD_BSEG.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_BSEG INTO gs_datatab_ZOLD_BSEG.
      Move-corresponding gs_datatab_ZOLD_BSEG to LS_BSEG.
      Modify ZOLD_BSEG from LS_BSEG.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "BSEG
***************BSEG

************* COEJ
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_COEJ[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_COEJ INTO gs_work_tab_ZOLD_COEJ.
      CLEAR: gs_datatab_ZOLD_COEJ.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_COEJ TO gs_datatab_ZOLD_COEJ.
      APPEND gs_datatab_ZOLD_COEJ TO gt_datatab_ZOLD_COEJ.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_COEJ INTO gs_datatab_ZOLD_COEJ.
      Move-corresponding gs_datatab_ZOLD_COEJ to LS_COEJ.
      Modify ZOLD_COEJ from LS_COEJ.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "COEJ
***************COEJ

************* COST
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_COST[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_COST INTO gs_work_tab_ZOLD_COST.
      CLEAR: gs_datatab_ZOLD_COST.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_COST TO gs_datatab_ZOLD_COST.
      APPEND gs_datatab_ZOLD_COST TO gt_datatab_ZOLD_COST.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_COST INTO gs_datatab_ZOLD_COST.
      Move-corresponding gs_datatab_ZOLD_COST to LS_COST.
      Modify ZOLD_COST from LS_COST.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "COST
***************COST

************* CRHD
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_CRHD[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_CRHD INTO gs_work_tab_ZOLD_CRHD.
      CLEAR: gs_datatab_ZOLD_CRHD.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_CRHD TO gs_datatab_ZOLD_CRHD.
      APPEND gs_datatab_ZOLD_CRHD TO gt_datatab_ZOLD_CRHD.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_CRHD INTO gs_datatab_ZOLD_CRHD.
      Move-corresponding gs_datatab_ZOLD_CRHD to LS_CRHD.
      Modify ZOLD_CRHD from LS_CRHD.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "CRHD
***************CRHD

************* CSSL
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_CSSL[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_CSSL INTO gs_work_tab_ZOLD_CSSL.
      CLEAR: gs_datatab_ZOLD_CSSL.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_CSSL TO gs_datatab_ZOLD_CSSL.
      APPEND gs_datatab_ZOLD_CSSL TO gt_datatab_ZOLD_CSSL.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_CSSL INTO gs_datatab_ZOLD_CSSL.
      Move-corresponding gs_datatab_ZOLD_CSSL to LS_CSSL.
      Modify ZOLD_CSSL from LS_CSSL.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "CSSL
***************CSSL

************* DDDDLCHARTYPES
If rb_ACDO = 'X'.
  IF gt_work_tab_ZDDDDLCHARTYPES[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZDDDDLCHARTYPES INTO gs_work_tab_ZDDDDLCHARTYPES.
      CLEAR: gs_datatab_ZDDDDLCHARTYPES.
      MOVE-CORRESPONDING gs_work_tab_ZDDDDLCHARTYPES TO gs_datatab_ZDDDDLCHARTYPES.
      APPEND gs_datatab_ZDDDDLCHARTYPES TO gt_datatab_ZDDDDLCHARTYPES.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZDDDDLCHARTYPES INTO gs_datatab_ZDDDDLCHARTYPES.
      Move-corresponding gs_datatab_ZDDDDLCHARTYPES to LS_DDDDLCHARTYPES.
      Modify ZDDDDLCHARTYPES from LS_DDDDLCHARTYPES.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "DDDDLCHARTYPES
***************DDDDLCHARTYPES

************* DDDDLNUMTYPES
If rb_ACDO = 'X'.
  IF gt_work_tab_ZDDDDLNUMTYPES[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZDDDDLNUMTYPES INTO gs_work_tab_ZDDDDLNUMTYPES.
      CLEAR: gs_datatab_ZDDDDLNUMTYPES.
      MOVE-CORRESPONDING gs_work_tab_ZDDDDLNUMTYPES TO gs_datatab_ZDDDDLNUMTYPES.
      APPEND gs_datatab_ZDDDDLNUMTYPES TO gt_datatab_ZDDDDLNUMTYPES.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZDDDDLNUMTYPES INTO gs_datatab_ZDDDDLNUMTYPES.
      Move-corresponding gs_datatab_ZDDDDLNUMTYPES to LS_DDDDLNUMTYPES.
      Modify ZDDDDLNUMTYPES from LS_DDDDLNUMTYPES.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "DDDDLNUMTYPES
***************DDDDLNUMTYPES

************* EKBE
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_EKBE[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_EKBE INTO gs_work_tab_ZOLD_EKBE.
      CLEAR: gs_datatab_ZOLD_EKBE.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_EKBE TO gs_datatab_ZOLD_EKBE.
      APPEND gs_datatab_ZOLD_EKBE TO gt_datatab_ZOLD_EKBE.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_EKBE INTO gs_datatab_ZOLD_EKBE.
      Move-corresponding gs_datatab_ZOLD_EKBE to LS_EKBE.
      Modify ZOLD_EKBE from LS_EKBE.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "EKBE
***************EKBE

************* EKES
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_EKES[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_EKES INTO gs_work_tab_ZOLD_EKES.
      CLEAR: gs_datatab_ZOLD_EKES.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_EKES TO gs_datatab_ZOLD_EKES.
      APPEND gs_datatab_ZOLD_EKES TO gt_datatab_ZOLD_EKES.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_EKES INTO gs_datatab_ZOLD_EKES.
      Move-corresponding gs_datatab_ZOLD_EKES to LS_EKES.
      Modify ZOLD_EKES from LS_EKES.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "EKES
***************EKES

************* EKET
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_EKET[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_EKET INTO gs_work_tab_ZOLD_EKET.
      CLEAR: gs_datatab_ZOLD_EKET.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_EKET TO gs_datatab_ZOLD_EKET.
      APPEND gs_datatab_ZOLD_EKET TO gt_datatab_ZOLD_EKET.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_EKET INTO gs_datatab_ZOLD_EKET.
      Move-corresponding gs_datatab_ZOLD_EKET to LS_EKET.
      Modify ZOLD_EKET from LS_EKET.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "EKET
***************EKET

************* EKKN
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_EKKN[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_EKKN INTO gs_work_tab_ZOLD_EKKN.
      CLEAR: gs_datatab_ZOLD_EKKN.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_EKKN TO gs_datatab_ZOLD_EKKN.
      APPEND gs_datatab_ZOLD_EKKN TO gt_datatab_ZOLD_EKKN.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_EKKN INTO gs_datatab_ZOLD_EKKN.
      Move-corresponding gs_datatab_ZOLD_EKKN to LS_EKKN.
      Modify ZOLD_EKKN from LS_EKKN.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "EKKN
***************EKKN

************* EKKO
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_EKKO[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_EKKO INTO gs_work_tab_ZOLD_EKKO.
      CLEAR: gs_datatab_ZOLD_EKKO.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_EKKO TO gs_datatab_ZOLD_EKKO.
      APPEND gs_datatab_ZOLD_EKKO TO gt_datatab_ZOLD_EKKO.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_EKKO INTO gs_datatab_ZOLD_EKKO.
      Move-corresponding gs_datatab_ZOLD_EKKO to LS_EKKO.
      Modify ZOLD_EKKO from LS_EKKO.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "EKKO
***************EKKO

************* EKPA
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_EKPA[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_EKPA INTO gs_work_tab_ZOLD_EKPA.
      CLEAR: gs_datatab_ZOLD_EKPA.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_EKPA TO gs_datatab_ZOLD_EKPA.
      APPEND gs_datatab_ZOLD_EKPA TO gt_datatab_ZOLD_EKPA.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_EKPA INTO gs_datatab_ZOLD_EKPA.
      Move-corresponding gs_datatab_ZOLD_EKPA to LS_EKPA.
      Modify ZOLD_EKPA from LS_EKPA.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "EKPA
***************EKPA

************* EKPO
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_EKPO[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_EKPO INTO gs_work_tab_ZOLD_EKPO.
      CLEAR: gs_datatab_ZOLD_EKPO.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_EKPO TO gs_datatab_ZOLD_EKPO.
      APPEND gs_datatab_ZOLD_EKPO TO gt_datatab_ZOLD_EKPO.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_EKPO INTO gs_datatab_ZOLD_EKPO.
      Move-corresponding gs_datatab_ZOLD_EKPO to LS_EKPO.
      Modify ZOLD_EKPO from LS_EKPO.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "EKPO
***************EKPO

************* FPLA
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_FPLA[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_FPLA INTO gs_work_tab_ZOLD_FPLA.
      CLEAR: gs_datatab_ZOLD_FPLA.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_FPLA TO gs_datatab_ZOLD_FPLA.
      APPEND gs_datatab_ZOLD_FPLA TO gt_datatab_ZOLD_FPLA.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_FPLA INTO gs_datatab_ZOLD_FPLA.
      Move-corresponding gs_datatab_ZOLD_FPLA to LS_FPLA.
      Modify ZOLD_FPLA from LS_FPLA.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "FPLA
***************FPLA

************* FPLT
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_FPLT[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_FPLT INTO gs_work_tab_ZOLD_FPLT.
      CLEAR: gs_datatab_ZOLD_FPLT.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_FPLT TO gs_datatab_ZOLD_FPLT.
      APPEND gs_datatab_ZOLD_FPLT TO gt_datatab_ZOLD_FPLT.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_FPLT INTO gs_datatab_ZOLD_FPLT.
      Move-corresponding gs_datatab_ZOLD_FPLT to LS_FPLT.
      Modify ZOLD_FPLT from LS_FPLT.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "FPLT
***************FPLT

************* IHPA
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_IHPA[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_IHPA INTO gs_work_tab_ZOLD_IHPA.
      CLEAR: gs_datatab_ZOLD_IHPA.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_IHPA TO gs_datatab_ZOLD_IHPA.
      APPEND gs_datatab_ZOLD_IHPA TO gt_datatab_ZOLD_IHPA.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_IHPA INTO gs_datatab_ZOLD_IHPA.
      Move-corresponding gs_datatab_ZOLD_IHPA to LS_IHPA.
      Modify ZOLD_IHPA from LS_IHPA.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "IHPA
***************IHPA

************* JEST
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_JEST[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_JEST INTO gs_work_tab_ZOLD_JEST.
      CLEAR: gs_datatab_ZOLD_JEST.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_JEST TO gs_datatab_ZOLD_JEST.
      APPEND gs_datatab_ZOLD_JEST TO gt_datatab_ZOLD_JEST.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_JEST INTO gs_datatab_ZOLD_JEST.
      Move-corresponding gs_datatab_ZOLD_JEST to LS_JEST.
      Modify ZOLD_JEST from LS_JEST.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "JEST
***************JEST

************* KONV
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_KONV[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_KONV INTO gs_work_tab_ZOLD_KONV.
      CLEAR: gs_datatab_ZOLD_KONV.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_KONV TO gs_datatab_ZOLD_KONV.
      APPEND gs_datatab_ZOLD_KONV TO gt_datatab_ZOLD_KONV.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_KONV INTO gs_datatab_ZOLD_KONV.
      Move-corresponding gs_datatab_ZOLD_KONV to LS_KONV.
      Modify ZOLD_KONV from LS_KONV.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "KONV
***************KONV

************* LIKP
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_LIKP[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_LIKP INTO gs_work_tab_ZOLD_LIKP.
      CLEAR: gs_datatab_ZOLD_LIKP.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_LIKP TO gs_datatab_ZOLD_LIKP.
      APPEND gs_datatab_ZOLD_LIKP TO gt_datatab_ZOLD_LIKP.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_LIKP INTO gs_datatab_ZOLD_LIKP.
      Move-corresponding gs_datatab_ZOLD_LIKP to LS_LIKP.
      Modify ZOLD_LIKP from LS_LIKP.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "LIKP
***************LIKP

************* LIPS
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_LIPS[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_LIPS INTO gs_work_tab_ZOLD_LIPS.
      CLEAR: gs_datatab_ZOLD_LIPS.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_LIPS TO gs_datatab_ZOLD_LIPS.
      APPEND gs_datatab_ZOLD_LIPS TO gt_datatab_ZOLD_LIPS.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_LIPS INTO gs_datatab_ZOLD_LIPS.
      Move-corresponding gs_datatab_ZOLD_LIPS to LS_LIPS.
      Modify ZOLD_LIPS from LS_LIPS.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "LIPS
***************LIPS

************* MKPF
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_MKPF[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_MKPF INTO gs_work_tab_ZOLD_MKPF.
      CLEAR: gs_datatab_ZOLD_MKPF.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_MKPF TO gs_datatab_ZOLD_MKPF.
      APPEND gs_datatab_ZOLD_MKPF TO gt_datatab_ZOLD_MKPF.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_MKPF INTO gs_datatab_ZOLD_MKPF.
      Move-corresponding gs_datatab_ZOLD_MKPF to LS_MKPF.
      Modify ZOLD_MKPF from LS_MKPF.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "MKPF
***************MKPF

************* MLST
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_MLST[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_MLST INTO gs_work_tab_ZOLD_MLST.
      CLEAR: gs_datatab_ZOLD_MLST.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_MLST TO gs_datatab_ZOLD_MLST.
      APPEND gs_datatab_ZOLD_MLST TO gt_datatab_ZOLD_MLST.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_MLST INTO gs_datatab_ZOLD_MLST.
      Move-corresponding gs_datatab_ZOLD_MLST to LS_MLST.
      Modify ZOLD_MLST from LS_MLST.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "MLST
***************MLST

************* MSEG
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_MSEG[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_MSEG INTO gs_work_tab_ZOLD_MSEG.
      CLEAR: gs_datatab_ZOLD_MSEG.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_MSEG TO gs_datatab_ZOLD_MSEG.
      APPEND gs_datatab_ZOLD_MSEG TO gt_datatab_ZOLD_MSEG.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_MSEG INTO gs_datatab_ZOLD_MSEG.
      Move-corresponding gs_datatab_ZOLD_MSEG to LS_MSEG.
      Modify ZOLD_MSEG from LS_MSEG.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "MSEG
***************MSEG

************* PRHI
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_PRHI[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_PRHI INTO gs_work_tab_ZOLD_PRHI.
      CLEAR: gs_datatab_ZOLD_PRHI.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_PRHI TO gs_datatab_ZOLD_PRHI.
      APPEND gs_datatab_ZOLD_PRHI TO gt_datatab_ZOLD_PRHI.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_PRHI INTO gs_datatab_ZOLD_PRHI.
      Move-corresponding gs_datatab_ZOLD_PRHI to LS_PRHI.
      Modify ZOLD_PRHI from LS_PRHI.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "PRHI
***************PRHI

************* PROJ
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_PROJ[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_PROJ INTO gs_work_tab_ZOLD_PROJ.
      CLEAR: gs_datatab_ZOLD_PROJ.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_PROJ TO gs_datatab_ZOLD_PROJ.
      APPEND gs_datatab_ZOLD_PROJ TO gt_datatab_ZOLD_PROJ.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_PROJ INTO gs_datatab_ZOLD_PROJ.
      Move-corresponding gs_datatab_ZOLD_PROJ to LS_PROJ.
      Modify ZOLD_PROJ from LS_PROJ.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "PROJ
***************PROJ

************* PROJS
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_PROJS[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_PROJS INTO gs_work_tab_ZOLD_PROJS.
      CLEAR: gs_datatab_ZOLD_PROJS.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_PROJS TO gs_datatab_ZOLD_PROJS.
      APPEND gs_datatab_ZOLD_PROJS TO gt_datatab_ZOLD_PROJS.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_PROJS INTO gs_datatab_ZOLD_PROJS.
      Move-corresponding gs_datatab_ZOLD_PROJS to LS_PROJS.
      Modify ZOLD_PROJS from LS_PROJS.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "PROJS
***************PROJS

************* PRPS
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_PRPS[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_PRPS INTO gs_work_tab_ZOLD_PRPS.
      CLEAR: gs_datatab_ZOLD_PRPS.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_PRPS TO gs_datatab_ZOLD_PRPS.
      APPEND gs_datatab_ZOLD_PRPS TO gt_datatab_ZOLD_PRPS.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_PRPS INTO gs_datatab_ZOLD_PRPS.
      Move-corresponding gs_datatab_ZOLD_PRPS to LS_PRPS.
      Modify ZOLD_PRPS from LS_PRPS.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "PRPS
***************PRPS

************* PRPSS
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_PRPSS[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_PRPSS INTO gs_work_tab_ZOLD_PRPSS.
      CLEAR: gs_datatab_ZOLD_PRPSS.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_PRPSS TO gs_datatab_ZOLD_PRPSS.
      APPEND gs_datatab_ZOLD_PRPSS TO gt_datatab_ZOLD_PRPSS.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_PRPSS INTO gs_datatab_ZOLD_PRPSS.
      Move-corresponding gs_datatab_ZOLD_PRPSS to LS_PRPSS.
      Modify ZOLD_PRPSS from LS_PRPSS.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "PRPSS
***************PRPSS

************* QMEL
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_QMEL[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_QMEL INTO gs_work_tab_ZOLD_QMEL.
      CLEAR: gs_datatab_ZOLD_QMEL.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_QMEL TO gs_datatab_ZOLD_QMEL.
      APPEND gs_datatab_ZOLD_QMEL TO gt_datatab_ZOLD_QMEL.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_QMEL INTO gs_datatab_ZOLD_QMEL.
      Move-corresponding gs_datatab_ZOLD_QMEL to LS_QMEL.
      Modify ZOLD_QMEL from LS_QMEL.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "QMEL
***************QMEL

************* QMFE
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_QMFE[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_QMFE INTO gs_work_tab_ZOLD_QMFE.
      CLEAR: gs_datatab_ZOLD_QMFE.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_QMFE TO gs_datatab_ZOLD_QMFE.
      APPEND gs_datatab_ZOLD_QMFE TO gt_datatab_ZOLD_QMFE.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_QMFE INTO gs_datatab_ZOLD_QMFE.
      Move-corresponding gs_datatab_ZOLD_QMFE to LS_QMFE.
      Modify ZOLD_QMFE from LS_QMFE.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "QMFE
***************QMFE

************* QMSM
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_QMSM[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_QMSM INTO gs_work_tab_ZOLD_QMSM.
      CLEAR: gs_datatab_ZOLD_QMSM.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_QMSM TO gs_datatab_ZOLD_QMSM.
      APPEND gs_datatab_ZOLD_QMSM TO gt_datatab_ZOLD_QMSM.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_QMSM INTO gs_datatab_ZOLD_QMSM.
      Move-corresponding gs_datatab_ZOLD_QMSM to LS_QMSM.
      Modify ZOLD_QMSM from LS_QMSM.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "QMSM
***************QMSM

************* RESB
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_RESB[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_RESB INTO gs_work_tab_ZOLD_RESB.
      CLEAR: gs_datatab_ZOLD_RESB.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_RESB TO gs_datatab_ZOLD_RESB.
      APPEND gs_datatab_ZOLD_RESB TO gt_datatab_ZOLD_RESB.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_RESB INTO gs_datatab_ZOLD_RESB.
      Move-corresponding gs_datatab_ZOLD_RESB to LS_RESB.
      Modify ZOLD_RESB from LS_RESB.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "RESB
***************RESB

************* STXH
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_STXH[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_STXH INTO gs_work_tab_ZOLD_STXH.
      CLEAR: gs_datatab_ZOLD_STXH.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_STXH TO gs_datatab_ZOLD_STXH.
      APPEND gs_datatab_ZOLD_STXH TO gt_datatab_ZOLD_STXH.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_STXH INTO gs_datatab_ZOLD_STXH.
      Move-corresponding gs_datatab_ZOLD_STXH to LS_STXH.
      Modify ZOLD_STXH from LS_STXH.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "STXH
***************STXH

************* STXL
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_STXL[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_STXL INTO gs_work_tab_ZOLD_STXL.
      CLEAR: gs_datatab_ZOLD_STXL.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_STXL TO gs_datatab_ZOLD_STXL.
      APPEND gs_datatab_ZOLD_STXL TO gt_datatab_ZOLD_STXL.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_STXL INTO gs_datatab_ZOLD_STXL.
      Move-corresponding gs_datatab_ZOLD_STXL to LS_STXL.
      Modify ZOLD_STXL from LS_STXL.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "STXL
***************STXL

************* VBAK
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_VBAK[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_VBAK INTO gs_work_tab_ZOLD_VBAK.
      CLEAR: gs_datatab_ZOLD_VBAK.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_VBAK TO gs_datatab_ZOLD_VBAK.
      APPEND gs_datatab_ZOLD_VBAK TO gt_datatab_ZOLD_VBAK.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_VBAK INTO gs_datatab_ZOLD_VBAK.
      Move-corresponding gs_datatab_ZOLD_VBAK to LS_VBAK.
      Modify ZOLD_VBAK from LS_VBAK.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "VBAK
***************VBAK

************* VBAP
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_VBAP[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_VBAP INTO gs_work_tab_ZOLD_VBAP.
      CLEAR: gs_datatab_ZOLD_VBAP.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_VBAP TO gs_datatab_ZOLD_VBAP.
      APPEND gs_datatab_ZOLD_VBAP TO gt_datatab_ZOLD_VBAP.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_VBAP INTO gs_datatab_ZOLD_VBAP.
      Move-corresponding gs_datatab_ZOLD_VBAP to LS_VBAP.
      Modify ZOLD_VBAP from LS_VBAP.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "VBAP
***************VBAP

************* VBEP
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_VBEP[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_VBEP INTO gs_work_tab_ZOLD_VBEP.
      CLEAR: gs_datatab_ZOLD_VBEP.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_VBEP TO gs_datatab_ZOLD_VBEP.
      APPEND gs_datatab_ZOLD_VBEP TO gt_datatab_ZOLD_VBEP.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_VBEP INTO gs_datatab_ZOLD_VBEP.
      Move-corresponding gs_datatab_ZOLD_VBEP to LS_VBEP.
      Modify ZOLD_VBEP from LS_VBEP.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "VBEP
***************VBEP

************* VBFA
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_VBFA[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_VBFA INTO gs_work_tab_ZOLD_VBFA.
      CLEAR: gs_datatab_ZOLD_VBFA.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_VBFA TO gs_datatab_ZOLD_VBFA.
      APPEND gs_datatab_ZOLD_VBFA TO gt_datatab_ZOLD_VBFA.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_VBFA INTO gs_datatab_ZOLD_VBFA.
      Move-corresponding gs_datatab_ZOLD_VBFA to LS_VBFA.
      Modify ZOLD_VBFA from LS_VBFA.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "VBFA
***************VBFA

************* VBKD
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_VBKD[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_VBKD INTO gs_work_tab_ZOLD_VBKD.
      CLEAR: gs_datatab_ZOLD_VBKD.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_VBKD TO gs_datatab_ZOLD_VBKD.
      APPEND gs_datatab_ZOLD_VBKD TO gt_datatab_ZOLD_VBKD.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_VBKD INTO gs_datatab_ZOLD_VBKD.
      Move-corresponding gs_datatab_ZOLD_VBKD to LS_VBKD.
      Modify ZOLD_VBKD from LS_VBKD.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "VBKD
***************VBKD

************* VBPA
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_VBPA[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_VBPA INTO gs_work_tab_ZOLD_VBPA.
      CLEAR: gs_datatab_ZOLD_VBPA.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_VBPA TO gs_datatab_ZOLD_VBPA.
      APPEND gs_datatab_ZOLD_VBPA TO gt_datatab_ZOLD_VBPA.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_VBPA INTO gs_datatab_ZOLD_VBPA.
      Move-corresponding gs_datatab_ZOLD_VBPA to LS_VBPA.
      Modify ZOLD_VBPA from LS_VBPA.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "VBPA
***************VBPA

************* VBRK
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_VBRK[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_VBRK INTO gs_work_tab_ZOLD_VBRK.
      CLEAR: gs_datatab_ZOLD_VBRK.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_VBRK TO gs_datatab_ZOLD_VBRK.
      APPEND gs_datatab_ZOLD_VBRK TO gt_datatab_ZOLD_VBRK.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_VBRK INTO gs_datatab_ZOLD_VBRK.
      Move-corresponding gs_datatab_ZOLD_VBRK to LS_VBRK.
      Modify ZOLD_VBRK from LS_VBRK.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "VBRK
***************VBRK

************* VBRP
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_VBRP[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_VBRP INTO gs_work_tab_ZOLD_VBRP.
      CLEAR: gs_datatab_ZOLD_VBRP.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_VBRP TO gs_datatab_ZOLD_VBRP.
      APPEND gs_datatab_ZOLD_VBRP TO gt_datatab_ZOLD_VBRP.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_VBRP INTO gs_datatab_ZOLD_VBRP.
      Move-corresponding gs_datatab_ZOLD_VBRP to LS_VBRP.
      Modify ZOLD_VBRP from LS_VBRP.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "VBRP
***************VBRP

************* VBUK
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_VBUK[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_VBUK INTO gs_work_tab_ZOLD_VBUK.
      CLEAR: gs_datatab_ZOLD_VBUK.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_VBUK TO gs_datatab_ZOLD_VBUK.
      APPEND gs_datatab_ZOLD_VBUK TO gt_datatab_ZOLD_VBUK.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_VBUK INTO gs_datatab_ZOLD_VBUK.
      Move-corresponding gs_datatab_ZOLD_VBUK to LS_VBUK.
      Modify ZOLD_VBUK from LS_VBUK.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "VBUK
***************VBUK

************* VBUP
If rb_ACDO = 'X'.
  IF gt_work_tab_ZOLD_VBUP[] IS NOT INITIAL.
    LOOP AT gt_work_tab_ZOLD_VBUP INTO gs_work_tab_ZOLD_VBUP.
      CLEAR: gs_datatab_ZOLD_VBUP.
      MOVE-CORRESPONDING gs_work_tab_ZOLD_VBUP TO gs_datatab_ZOLD_VBUP.
      APPEND gs_datatab_ZOLD_VBUP TO gt_datatab_ZOLD_VBUP.
    ENDLOOP.

    "create table entries
    LOOP AT gt_datatab_ZOLD_VBUP INTO gs_datatab_ZOLD_VBUP.
      Move-corresponding gs_datatab_ZOLD_VBUP to LS_VBUP.
      Modify ZOLD_VBUP from LS_VBUP.
      Commit work.
    ENDLOOP. "gt_datatab.
  ELSE. "GT_WORKTAB
    MESSAGE text-002 TYPE 'I'.
  ENDIF. "GT_WORKTAB
Endif. "VBUP
***************VBUP