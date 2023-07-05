*&---------------------------------------------------------------------*
*& Report Z_SD_PRICE_LOADS
*&---------------------------------------------------------------------*
* Author : David Ellwood EXTELLWODA
* Date  :  May 2023
* CHG 106
*----------------------------------------------------------------------*
* Preconditions:
*  Excel file with valid data and header line
*
*----------------------------------------------------------------------*
* Short description:
*
* The user will complete the Vendor add details template and then upload to SAP.
*
REPORT Z_SD_PRICE_LOADS.

INCLUDE Z_SD_PRICE_LOADS_TOP.

INCLUDE Z_SD_PRICE_LOADS_SEL.


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

If rb_yglp = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_yglp[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "yglp

If rb_ycsp4 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ycsp4[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ycsp4

If rb_ymaa2 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ymaa2[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ymaa2

If rb_ymaa3 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ymaa3[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ymaa3

If rb_ymaa4 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ymaa4[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ymaa4

If rb_ymaa5 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ymaa5[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ymaa5

If rb_ymaa7 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ymaa7[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ymaa7

If rb_ymaa8 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ymaa8[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ymaa8

If rb_ymaa9 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ymaa9[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ymaa9

If rb_ymaaa = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ymaaa[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ymaaa

If rb_ymex3 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ymex3[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ymex3

If rb_ypr14 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ypr14[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ypr14

If rb_ypr25 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ypr25[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ypr25

If rb_ypr27 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ypr27[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ypr27

If rb_mwst1 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mwst1[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "mwst1

If rb_mwst2 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mwst2[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "mwst2

If rb_mws10 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mwst10[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "mwst10

If rb_mws11 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_mwst11[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "mwst11

If rb_ipva2 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ipva2[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ipva2

If rb_ipbs2 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ipbs2[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ipbs2

If rb_iplw2 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_iplw2[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "iplw2

If rb_icbs2 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_icbs2[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "icbs2

If rb_icva1 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_icva1[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "icva1

If rb_ypr11 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_ypr11[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "ypr11

If rb_yk714 = 'X'.
  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
*     I_FIELD_SEPERATOR    =
      i_line_header        = 'X'
      i_tab_raw_data       = gt_raw       " WORK TABLE
      i_filename           = p_file
    TABLES
      i_tab_converted_data = gt_work_tab_yk7114[]    "ACTUAL DATA
    EXCEPTIONS
      conversion_failed    = 1
      OTHERS               = 2.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
            WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.
Endif. "yk7114

If rb_bw01 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw01[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw01

  If rb_bw02 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw02[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw02

  If rb_bw11 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw11[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw11

  If rb_bw12 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw12[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw12

  If rb_bw21 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw21[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw21

  If rb_bw22 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw22[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw22

  If rb_bw31 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw31[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw31

  If rb_bw32 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw32[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw32

  If rb_bw41 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw41[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw41

  If rb_bw42 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw42[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw42

  If rb_bw51 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_bw51[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "bw51

  If rb_isvb = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_isvb[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "isvb

  If rb_isvc = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_isvc[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "isvc

  If rb_isvd = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_isvd[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "isvd

  If rb_isvf = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_isvf[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "isvf

  If rb_isvg = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_isvg[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "isvg

  If rb_isic = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_isic[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "isic

  If rb_ist2 = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_ist2[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "ist2

  If rb_istb = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_istb[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "istb

  If rb_istc = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_istc[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "istc

  If rb_isti = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_isti[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "isti

  If rb_istn = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_istn[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "istn

  If rb_ists = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_ists[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "ists

  If rb_istt = 'X'.
    CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
      EXPORTING
*     I_FIELD_SEPERATOR    =
        i_line_header        = 'X'
        i_tab_raw_data       = gt_raw       " WORK TABLE
        i_filename           = p_file
      TABLES
        i_tab_converted_data = gt_work_tab_istt[]    "ACTUAL DATA
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
              WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  Endif. "istt

***********************************************************************

* END-OF-SELECTION.
END-OF-SELECTION.

******************* YGLP ***************
If rb_yglp = 'X'.
  IF gt_work_tab_yglp[] IS NOT INITIAL.

    LOOP AT gt_work_tab_yglp INTO gs_work_tab_yglp.

      CLEAR: gs_datatab_yglp.
      MOVE-CORRESPONDING gs_work_tab_yglp TO gs_datatab_yglp.
      APPEND gs_datatab_yglp TO gt_datatab_yglp.
    ENDLOOP.

    LOOP AT gt_datatab_yglp INTO gs_datatab_yglp.
      Clear: lv_matnr.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_yglp-matnr
            IMPORTING
              output = gs_datatab_yglp-matnr.

        Select single matnr into lv_matnr
          from mara
          where matnr = gs_datatab_yglp-matnr.
          If sy-subrc = 0. "check on mat exists.

                "fill FM parameters
                      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
                      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
                      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
                "fill komg
                      ls_komg-matnr = gs_datatab_yglp-matnr.
                      Append ls_komg to lt_komg.

                " fill KOMK KOMP
*                      ls_komk-vkorg = p_vkorgn.
*                      ls_komk-auart = ls_a635-auart_sd.
                      Append ls_komk to lt_komk.
                      ls_komp-matnr = gs_datatab_yglp-matnr.
                      Append ls_komp to lt_komp.

                " fill komv
                      lv_kotabnr = '950'.
                      lv_kschl = 'YGLP'.
                      lv_datab = gs_datatab_yglp-datab.
                      lv_datbi = gs_datatab_yglp-datbi.

                      ls_komv-kappl = 'V'.
                      ls_komv-kschl = 'YGLP'.
                      ls_komv-kbetr = gs_datatab_yglp-kbetr.
                      ls_komv-kpein = gs_datatab_yglp-kpein.
                      ls_komv-kmein = gs_datatab_yglp-kmein.
                      ls_komv-waers = gs_datatab_yglp-konwa.
                      Append ls_komv to lt_komv.

                      perform PR_COPY.

                "         *************** end fill

          Endif. "mat exists

      ENDLOOP. "gt_datatab.
  Endif. "check on yglp tab
Endif. "YGLP
**************************************YGLP

******************* YCSP4 ***************
If rb_ycsp4 = 'X'.
  IF gt_work_tab_ycsp4[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ycsp4 INTO gs_work_tab_ycsp4.

      CLEAR: gs_datatab_ycsp4.
      MOVE-CORRESPONDING gs_work_tab_ycsp4 TO gs_datatab_ycsp4.
      APPEND gs_datatab_ycsp4 TO gt_datatab_ycsp4.
    ENDLOOP.

    LOOP AT gt_datatab_ycsp4 INTO gs_datatab_ycsp4.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ycsp4-matnr
*            IMPORTING
*              output = gs_datatab_ycsp4-matnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-vkorg = gs_datatab_ycsp4-vkorg.
      ls_komg-prodh = gs_datatab_ycsp4-prodh.
      ls_komg-yyprgrp = gs_datatab_ycsp4-yyprgrp.
      ls_komg-konda = gs_datatab_ycsp4-konda.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-vkorg = gs_datatab_ycsp4-vkorg.
      ls_komk-konda = gs_datatab_ycsp4-konda.
      Append ls_komk to lt_komk.
      ls_komp-prodh = gs_datatab_ycsp4-prodh.
      ls_komp-yyprgrp = gs_datatab_ycsp4-yyprgrp.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '921'.
      lv_kschl = 'YCSP'.
      lv_datab = gs_datatab_ycsp4-datab.
      lv_datbi = gs_datatab_ycsp4-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YCSP'.
      ls_komv-kbetr = gs_datatab_ycsp4-kbetr.
      ls_komv-kpein = gs_datatab_ycsp4-kpein.
      ls_komv-kmein = gs_datatab_ycsp4-kmein.
      ls_komv-waers = gs_datatab_ycsp4-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ycsp4 tab
Endif. "YCSP4
**************************************YCSP4

******************* YMAA2 ***************
If rb_ymaa2 = 'X'.
  IF gt_work_tab_ymaa2[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ymaa2 INTO gs_work_tab_ymaa2.

      CLEAR: gs_datatab_ymaa2.
      MOVE-CORRESPONDING gs_work_tab_ymaa2 TO gs_datatab_ymaa2.
      APPEND gs_datatab_ymaa2 TO gt_datatab_ymaa2.
    ENDLOOP.

    LOOP AT gt_datatab_ymaa2 INTO gs_datatab_ymaa2.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa2-matnr
*            IMPORTING
*              output = gs_datatab_ymaa2-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa2-kunnr
*            IMPORTING
*              output = gs_datatab_ymaa3-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-prodh = gs_datatab_ymaa2-prodh.
      ls_komg-land1 = gs_datatab_ymaa2-land1.
      ls_komg-yyprgrp = gs_datatab_ymaa2-yyprgrp.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-land1 = gs_datatab_ymaa2-land1.
      Append ls_komk to lt_komk.
      ls_komp-prodh = gs_datatab_ymaa2-prodh.
      ls_komp-yyprgrp = gs_datatab_ymaa2-yyprgrp.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '952'.
      lv_kschl = 'YMAA'.
      lv_datab = gs_datatab_ymaa2-datab.
      lv_datbi = gs_datatab_ymaa2-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YMAA'.
      ls_komv-kbetr = gs_datatab_ymaa2-kbetr.
      ls_komv-kpein = gs_datatab_ymaa2-kpein.
      ls_komv-kmein = gs_datatab_ymaa2-kmein.
      ls_komv-waers = gs_datatab_ymaa2-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ymaa2 tab
Endif. "YMAA2
**************************************YMAA2

******************* YMAA3 ***************
If rb_ymaa3 = 'X'.
  IF gt_work_tab_ymaa3[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ymaa3 INTO gs_work_tab_ymaa3.

      CLEAR: gs_datatab_ymaa3.
      MOVE-CORRESPONDING gs_work_tab_ymaa3 TO gs_datatab_ymaa3.
      APPEND gs_datatab_ymaa3 TO gt_datatab_ymaa3.
    ENDLOOP.

    LOOP AT gt_datatab_ymaa3 INTO gs_datatab_ymaa3.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa3-matnr
*            IMPORTING
*              output = gs_datatab_ymaa3-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa3-kunnr
*            IMPORTING
*              output = gs_datatab_ymaa3-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-land1 = gs_datatab_ymaa3-land1.
      ls_komg-extwg = gs_datatab_ymaa3-extwg.
      ls_komg-yyprgrp = gs_datatab_ymaa3-yyprgrp.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-land1 = gs_datatab_ymaa3-land1.
      Append ls_komk to lt_komk.
      ls_komp-extwg = gs_datatab_ymaa3-extwg.
      ls_komp-yyprgrp = gs_datatab_ymaa3-yyprgrp.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '953'.
      lv_kschl = 'YMAA'.
      lv_datab = gs_datatab_ymaa3-datab.
      lv_datbi = gs_datatab_ymaa3-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YMAA'.
      ls_komv-kbetr = gs_datatab_ymaa3-kbetr.
      ls_komv-kpein = gs_datatab_ymaa3-kpein.
      ls_komv-kmein = gs_datatab_ymaa3-kmein.
      ls_komv-waers = gs_datatab_ymaa3-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ymaa3 tab
Endif. "YMAA3
**************************************YMAA3

******************* YMAA4 ***************
If rb_ymaa4 = 'X'.
  IF gt_work_tab_ymaa4[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ymaa4 INTO gs_work_tab_ymaa4.

      CLEAR: gs_datatab_ymaa4.
      MOVE-CORRESPONDING gs_work_tab_ymaa4 TO gs_datatab_ymaa4.
      APPEND gs_datatab_ymaa4 TO gt_datatab_ymaa4.
    ENDLOOP.

    LOOP AT gt_datatab_ymaa4 INTO gs_datatab_ymaa4.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa4-matnr
*            IMPORTING
*              output = gs_datatab_ymaa4-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa4-kunnr
*            IMPORTING
*              output = gs_datatab_ymaa4-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-land1 = gs_datatab_ymaa4-land1.
      ls_komg-yyprgrp = gs_datatab_ymaa4-yyprgrp.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-land1 = gs_datatab_ymaa4-land1.
      Append ls_komk to lt_komk.
      ls_komp-yyprgrp = gs_datatab_ymaa4-yyprgrp.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '954'.
      lv_kschl = 'YMAA'.
      lv_datab = gs_datatab_ymaa4-datab.
      lv_datbi = gs_datatab_ymaa4-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YMAA'.
      ls_komv-kbetr = gs_datatab_ymaa4-kbetr.
      ls_komv-kpein = gs_datatab_ymaa4-kpein.
      ls_komv-kmein = gs_datatab_ymaa4-kmein.
      ls_komv-waers = gs_datatab_ymaa4-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ymaa4 tab
Endif. "YMAA4
**************************************YMAA4

******************* YMAA5 ***************
If rb_ymaa5 = 'X'.
  IF gt_work_tab_ymaa5[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ymaa5 INTO gs_work_tab_ymaa5.

      CLEAR: gs_datatab_ymaa5.
      MOVE-CORRESPONDING gs_work_tab_ymaa5 TO gs_datatab_ymaa5.
      APPEND gs_datatab_ymaa5 TO gt_datatab_ymaa5.
    ENDLOOP.

    LOOP AT gt_datatab_ymaa5 INTO gs_datatab_ymaa5.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa5-matnr
*            IMPORTING
*              output = gs_datatab_ymaa5-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa5-kunnr
*            IMPORTING
*              output = gs_datatab_ymaa5-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-land1 = gs_datatab_ymaa5-land1.
      ls_komg-extwg = gs_datatab_ymaa5-extwg.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-land1 = gs_datatab_ymaa5-land1.
      Append ls_komk to lt_komk.
      ls_komp-extwg = gs_datatab_ymaa5-extwg.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '955'.
      lv_kschl = 'YMAA'.
      lv_datab = gs_datatab_ymaa5-datab.
      lv_datbi = gs_datatab_ymaa5-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YMAA'.
      ls_komv-kbetr = gs_datatab_ymaa5-kbetr.
      ls_komv-kpein = gs_datatab_ymaa5-kpein.
      ls_komv-kmein = gs_datatab_ymaa5-kmein.
      ls_komv-waers = gs_datatab_ymaa5-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ymaa5 tab
Endif. "YMAA5
**************************************YMAA5

******************* YMAA7 ***************
If rb_ymaa7 = 'X'.
  IF gt_work_tab_ymaa7[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ymaa7 INTO gs_work_tab_ymaa7.

      CLEAR: gs_datatab_ymaa7.
      MOVE-CORRESPONDING gs_work_tab_ymaa7 TO gs_datatab_ymaa7.
      APPEND gs_datatab_ymaa7 TO gt_datatab_ymaa7.
    ENDLOOP.

    LOOP AT gt_datatab_ymaa7 INTO gs_datatab_ymaa7.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa7-matnr
*            IMPORTING
*              output = gs_datatab_ymaa7-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa7-kunnr
*            IMPORTING
*              output = gs_datatab_ymaa7-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-vkorg = gs_datatab_ymaa7-vkorg.
      ls_komg-prodh = gs_datatab_ymaa7-prodh.
      ls_komg-yyprgrp = gs_datatab_ymaa7-yyprgrp.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-vkorg = gs_datatab_ymaa7-vkorg.
      Append ls_komk to lt_komk.
      ls_komp-prodh = gs_datatab_ymaa7-prodh.
      ls_komp-yyprgrp = gs_datatab_ymaa7-yyprgrp.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '957'.
      lv_kschl = 'YMAA'.
      lv_datab = gs_datatab_ymaa7-datab.
      lv_datbi = gs_datatab_ymaa7-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YMAA'.
      ls_komv-kbetr = gs_datatab_ymaa7-kbetr.
      ls_komv-kpein = gs_datatab_ymaa7-kpein.
      ls_komv-kmein = gs_datatab_ymaa7-kmein.
      ls_komv-waers = gs_datatab_ymaa7-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ymaa7 tab
Endif. "YMAA7
**************************************YMAA7

******************* YMAA8 ***************
If rb_ymaa8 = 'X'.
  IF gt_work_tab_ymaa8[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ymaa8 INTO gs_work_tab_ymaa8.

      CLEAR: gs_datatab_ymaa8.
      MOVE-CORRESPONDING gs_work_tab_ymaa8 TO gs_datatab_ymaa8.
      APPEND gs_datatab_ymaa8 TO gt_datatab_ymaa8.
    ENDLOOP.

    LOOP AT gt_datatab_ymaa8 INTO gs_datatab_ymaa8.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa8-matnr
*            IMPORTING
*              output = gs_datatab_ymaa8-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa8-kunnr
*            IMPORTING
*              output = gs_datatab_ymaa8-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-vkorg = gs_datatab_ymaa8-vkorg.
      ls_komg-extwg = gs_datatab_ymaa8-extwg.
      ls_komg-yyprgrp = gs_datatab_ymaa8-yyprgrp.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-vkorg = gs_datatab_ymaa8-vkorg.
      Append ls_komk to lt_komk.
      ls_komp-extwg = gs_datatab_ymaa8-extwg.
      ls_komp-yyprgrp = gs_datatab_ymaa8-yyprgrp.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '958'.
      lv_kschl = 'YMAA'.
      lv_datab = gs_datatab_ymaa8-datab.
      lv_datbi = gs_datatab_ymaa8-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YMAA'.
      ls_komv-kbetr = gs_datatab_ymaa8-kbetr.
      ls_komv-kpein = gs_datatab_ymaa8-kpein.
      ls_komv-kmein = gs_datatab_ymaa8-kmein.
      ls_komv-waers = gs_datatab_ymaa8-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ymaa8 tab
Endif. "YMAA8
**************************************YMAA8

******************* YMAA9 ***************
If rb_ymaa9 = 'X'.
  IF gt_work_tab_ymaa9[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ymaa9 INTO gs_work_tab_ymaa9.

      CLEAR: gs_datatab_ymaa9.
      MOVE-CORRESPONDING gs_work_tab_ymaa9 TO gs_datatab_ymaa9.
      APPEND gs_datatab_ymaa9 TO gt_datatab_ymaa9.
    ENDLOOP.

    LOOP AT gt_datatab_ymaa9 INTO gs_datatab_ymaa9.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa9-matnr
*            IMPORTING
*              output = gs_datatab_ymaa9-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaa9-kunnr
*            IMPORTING
*              output = gs_datatab_ymaa9-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-vkorg = gs_datatab_ymaa9-vkorg.
      ls_komg-yyprgrp = gs_datatab_ymaa9-yyprgrp.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-vkorg = gs_datatab_ymaa9-vkorg.
      Append ls_komk to lt_komk.
      ls_komp-yyprgrp = gs_datatab_ymaa9-yyprgrp.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '960'.
      lv_kschl = 'YMAA'.
      lv_datab = gs_datatab_ymaa9-datab.
      lv_datbi = gs_datatab_ymaa9-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YMAA'.
      ls_komv-kbetr = gs_datatab_ymaa9-kbetr.
      ls_komv-kpein = gs_datatab_ymaa9-kpein.
      ls_komv-kmein = gs_datatab_ymaa9-kmein.
      ls_komv-waers = gs_datatab_ymaa9-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ymaa9 tab
Endif. "YMAA9
**************************************YMAA9

******************* YMAAA ***************
If rb_ymaaa = 'X'.
  IF gt_work_tab_ymaaa[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ymaaa INTO gs_work_tab_ymaaa.

      CLEAR: gs_datatab_ymaaa.
      MOVE-CORRESPONDING gs_work_tab_ymaaa TO gs_datatab_ymaaa.
      APPEND gs_datatab_ymaaa TO gt_datatab_ymaaa.
    ENDLOOP.

    LOOP AT gt_datatab_ymaaa INTO gs_datatab_ymaaa.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaaa-matnr
*            IMPORTING
*              output = gs_datatab_ymaaa-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymaaa-kunnr
*            IMPORTING
*              output = gs_datatab_ymaaa-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-vkorg = gs_datatab_ymaaa-vkorg.
      ls_komg-extwg = gs_datatab_ymaaa-extwg.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-vkorg = gs_datatab_ymaaa-vkorg.
      Append ls_komk to lt_komk.
      ls_komp-extwg = gs_datatab_ymaaa-extwg.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '959'.
      lv_kschl = 'YMAA'.
      lv_datab = gs_datatab_ymaaa-datab.
      lv_datbi = gs_datatab_ymaaa-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YMAA'.
      ls_komv-kbetr = gs_datatab_ymaaa-kbetr.
      ls_komv-kpein = gs_datatab_ymaaa-kpein.
      ls_komv-kmein = gs_datatab_ymaaa-kmein.
      ls_komv-waers = gs_datatab_ymaaa-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ymaaa tab
Endif. "YMAAA
**************************************YMAAA

******************* YMEX3 ***************
If rb_ymex3 = 'X'.
  IF gt_work_tab_ymex3[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ymex3 INTO gs_work_tab_ymex3.

      CLEAR: gs_datatab_ymex3.
      MOVE-CORRESPONDING gs_work_tab_ymex3 TO gs_datatab_ymex3.
      APPEND gs_datatab_ymex3 TO gt_datatab_ymex3.
    ENDLOOP.

    LOOP AT gt_datatab_ymex3 INTO gs_datatab_ymex3.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_ymex3-matnr
            IMPORTING
              output = gs_datatab_ymex3-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ymex3-kunnr
*            IMPORTING
*              output = gs_datatab_ymex3-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-lland = gs_datatab_ymex3-lland.
      ls_komg-matnr = gs_datatab_ymex3-matnr.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-land1 = gs_datatab_ymex3-lland.
      Append ls_komk to lt_komk.
      ls_komp-matnr = gs_datatab_ymex3-matnr.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '150'.
      lv_kschl = 'YMEX'.
      lv_datab = gs_datatab_ymex3-datab.
      lv_datbi = gs_datatab_ymex3-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YMEX'.
      ls_komv-kbetr = gs_datatab_ymex3-kbetr.
      ls_komv-kpein = gs_datatab_ymex3-kpein.
      ls_komv-kmein = gs_datatab_ymex3-kmein.
      ls_komv-waers = gs_datatab_ymex3-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ymex3 tab
Endif. "YMEX3
**************************************YMEX3

******************* YPR14 ***************
If rb_ypr14 = 'X'.
  IF gt_work_tab_ypr14[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ypr14 INTO gs_work_tab_ypr14.

      CLEAR: gs_datatab_ypr14.
      MOVE-CORRESPONDING gs_work_tab_ypr14 TO gs_datatab_ypr14.
      APPEND gs_datatab_ypr14 TO gt_datatab_ypr14.
    ENDLOOP.

    LOOP AT gt_datatab_ypr14 INTO gs_datatab_ypr14.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_ypr14-matnr
            IMPORTING
              output = gs_datatab_ypr14-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ypr14-kunnr
*            IMPORTING
*              output = gs_datatab_ypr14-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-vkorg = gs_datatab_ypr14-vkorg.
      ls_komg-vtweg = gs_datatab_ypr14-vtweg.
      ls_komg-matnr = gs_datatab_ypr14-matnr.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-vkorg = gs_datatab_ypr14-vkorg.
      ls_komk-vtweg = gs_datatab_ypr14-vtweg.
      Append ls_komk to lt_komk.
      ls_komp-matnr = gs_datatab_ypr14-matnr.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '004'.
      lv_kschl = 'YPR1'.
      lv_datab = gs_datatab_ypr14-datab.
      lv_datbi = gs_datatab_ypr14-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YPR1'.
      ls_komv-kbetr = gs_datatab_ypr14-kbetr.
      ls_komv-kpein = gs_datatab_ypr14-kpein.
      ls_komv-kmein = gs_datatab_ypr14-kmein.
      ls_komv-waers = gs_datatab_ypr14-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ypr14 tab
Endif. "YPR14
**************************************YPR14

******************* YPR25 ***************
If rb_ypr25 = 'X'.
  IF gt_work_tab_ypr25[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ypr25 INTO gs_work_tab_ypr25.

      CLEAR: gs_datatab_ypr25.
      MOVE-CORRESPONDING gs_work_tab_ypr25 TO gs_datatab_ypr25.
      APPEND gs_datatab_ypr25 TO gt_datatab_ypr25.
    ENDLOOP.

    LOOP AT gt_datatab_ypr25 INTO gs_datatab_ypr25.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_ypr25-matnr
            IMPORTING
              output = gs_datatab_ypr25-matnr.

          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_ypr25-kunnr
            IMPORTING
              output = gs_datatab_ypr25-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-vkorg = gs_datatab_ypr25-vkorg.
      ls_komg-vtweg = gs_datatab_ypr25-vtweg.
      ls_komg-kunnr = gs_datatab_ypr25-kunnr.
      ls_komg-matnr = gs_datatab_ypr25-matnr.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-vkorg = gs_datatab_ypr25-vkorg.
      ls_komk-vtweg = gs_datatab_ypr25-vtweg.
      ls_komk-kunnr = gs_datatab_ypr25-kunnr.
      Append ls_komk to lt_komk.
      ls_komp-matnr = gs_datatab_ypr25-matnr.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '305'.
      lv_kschl = 'YPR2'.
      lv_datab = gs_datatab_ypr25-datab.
      lv_datbi = gs_datatab_ypr25-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YPR2'.
      ls_komv-kbetr = gs_datatab_ypr25-kbetr.
      ls_komv-kpein = gs_datatab_ypr25-kpein.
      ls_komv-kmein = gs_datatab_ypr25-kmein.
      ls_komv-waers = gs_datatab_ypr25-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ypr25 tab
Endif. "YPR25
**************************************YPR25

******************* YPR27 ***************
If rb_ypr27 = 'X'.
  IF gt_work_tab_ypr27[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ypr27 INTO gs_work_tab_ypr27.

      CLEAR: gs_datatab_ypr27.
      MOVE-CORRESPONDING gs_work_tab_ypr27 TO gs_datatab_ypr27.
      APPEND gs_datatab_ypr27 TO gt_datatab_ypr27.
    ENDLOOP.

    LOOP AT gt_datatab_ypr27 INTO gs_datatab_ypr27.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_ypr27-matnr
            IMPORTING
              output = gs_datatab_ypr27-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ypr27-kunnr
*            IMPORTING
*              output = gs_datatab_ypr27-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-vkorg = gs_datatab_ypr27-vkorg.
      ls_komg-vtweg = gs_datatab_ypr27-vtweg.
      ls_komg-konda = gs_datatab_ypr27-konda.
      ls_komg-matnr = gs_datatab_ypr27-matnr.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-vkorg = gs_datatab_ypr27-vkorg.
      ls_komk-vtweg = gs_datatab_ypr27-vtweg.
      ls_komk-konda = gs_datatab_ypr27-konda.
      Append ls_komk to lt_komk.
      ls_komp-matnr = gs_datatab_ypr27-matnr.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '976'.
      lv_kschl = 'YPR2'.
      lv_datab = gs_datatab_ypr27-datab.
      lv_datbi = gs_datatab_ypr27-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YPR2'.
      ls_komv-kbetr = gs_datatab_ypr27-kbetr.
      ls_komv-kpein = gs_datatab_ypr27-kpein.
      ls_komv-kmein = gs_datatab_ypr27-kmein.
      ls_komv-waers = gs_datatab_ypr27-konwa.
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ypr27 tab
Endif. "YPR27
**************************************YPR27

******************* MWST1 ***************
If rb_mwst1 = 'X'.
  IF gt_work_tab_mwst1[] IS NOT INITIAL.

    LOOP AT gt_work_tab_mwst1 INTO gs_work_tab_mwst1.

      CLEAR: gs_datatab_mwst1.
      MOVE-CORRESPONDING gs_work_tab_mwst1 TO gs_datatab_mwst1.
      APPEND gs_datatab_mwst1 TO gt_datatab_mwst1.
    ENDLOOP.

    LOOP AT gt_datatab_mwst1 INTO gs_datatab_mwst1.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_mwst1-matnr
*            IMPORTING
*              output = gs_datatab_mwst1-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_mwst1-kunnr
*            IMPORTING
*              output = gs_datatab_mwst1-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_mwst1-aland.
      ls_komg-fkart = gs_datatab_mwst1-fkart.
      ls_komg-lland = gs_datatab_mwst1-lland.
      ls_komg-taxk1 = gs_datatab_mwst1-taxk1.
      ls_komg-taxm1 = gs_datatab_mwst1-taxm1.
      ls_komg-mwskz = gs_datatab_mwst1-mwsk1. "MWSK for MWST conditions
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-aland = gs_datatab_mwst1-aland.
      ls_komk-fkart = gs_datatab_mwst1-fkart.
      ls_komk-land1 = gs_datatab_mwst1-lland.
      ls_komk-taxk1 = gs_datatab_mwst1-taxk1.
      Append ls_komk to lt_komk.
      ls_komp-mwskz = gs_datatab_mwst1-mwsk1. "MWSK for MWST conditions
      ls_komp-taxm1 = gs_datatab_mwst1-taxm1.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '931'.
      lv_kschl = 'MWST'.
      lv_datab = gs_datatab_mwst1-datab.
      lv_datbi = gs_datatab_mwst1-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'MWST'.
      ls_komv-kbetr = gs_datatab_mwst1-kbetr.
      ls_komv-kpein = gs_datatab_mwst1-kpein.
      ls_komv-kmein = gs_datatab_mwst1-kmein.
      ls_komv-waers = gs_datatab_mwst1-konwa.
      ls_komv-mwsk1 = gs_datatab_mwst1-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on mwst1 tab
Endif. "MWST1
**************************************MWST1

******************* MWST2 ***************
If rb_mwst2 = 'X'.
  IF gt_work_tab_mwst2[] IS NOT INITIAL.

    LOOP AT gt_work_tab_mwst2 INTO gs_work_tab_mwst2.

      CLEAR: gs_datatab_mwst2.
      MOVE-CORRESPONDING gs_work_tab_mwst2 TO gs_datatab_mwst2.
      APPEND gs_datatab_mwst2 TO gt_datatab_mwst2.
    ENDLOOP.

    LOOP AT gt_datatab_mwst2 INTO gs_datatab_mwst2.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_mwst2-matnr
*            IMPORTING
*              output = gs_datatab_mwst2-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_mwst2-kunnr
*            IMPORTING
*              output = gs_datatab_mwst2-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_mwst2-aland.
      ls_komg-lland = gs_datatab_mwst2-lland.
      ls_komg-taxk1 = gs_datatab_mwst2-taxk1.
      ls_komg-taxm1 = gs_datatab_mwst2-taxm1.
      ls_komg-mwskz = gs_datatab_mwst2-mwsk1. "MWSK for MWST conditions
      Append ls_komg to lt_komg.



" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-aland = gs_datatab_mwst2-aland.
      ls_komk-land1 = gs_datatab_mwst2-lland.
      ls_komk-taxk1 = gs_datatab_mwst2-taxk1.
      Append ls_komk to lt_komk.
      ls_komp-taxm1 = gs_datatab_mwst2-taxm1.
      ls_komp-mwskz = gs_datatab_mwst2-mwsk1. "MWSK for MWST conditions
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '011'.
      lv_kschl = 'MWST'.
      lv_datab = gs_datatab_mwst2-datab.
      lv_datbi = gs_datatab_mwst2-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'MWST'.
      ls_komv-kbetr = gs_datatab_mwst2-kbetr.
      ls_komv-kpein = gs_datatab_mwst2-kpein.
      ls_komv-kmein = gs_datatab_mwst2-kmein.
      ls_komv-waers = gs_datatab_mwst2-konwa.
      ls_komv-mwsk1 = gs_datatab_mwst2-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on mwst2 tab
Endif. "MWST2
**************************************MWST2

******************* MWST10 ***************
If rb_mws10 = 'X'.
  IF gt_work_tab_mwst10[] IS NOT INITIAL.

    LOOP AT gt_work_tab_mwst10 INTO gs_work_tab_mwst10.

      CLEAR: gs_datatab_mwst10.
      MOVE-CORRESPONDING gs_work_tab_mwst10 TO gs_datatab_mwst10.
      APPEND gs_datatab_mwst10 TO gt_datatab_mwst10.
    ENDLOOP.

    LOOP AT gt_datatab_mwst10 INTO gs_datatab_mwst10.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_mwst10-matnr
*            IMPORTING
*              output = gs_datatab_mwst10-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_mwst10-kunnr
*            IMPORTING
*              output = gs_datatab_mwst10-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_mwst10-aland.
      ls_komg-taxk1 = gs_datatab_mwst10-taxk1.
      ls_komg-taxm1 = gs_datatab_mwst10-taxm1.
      ls_komg-mwskz = gs_datatab_mwst10-mwsk1. "MWSK for MWST conditions
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-aland = gs_datatab_mwst10-aland.
      ls_komk-taxk1 = gs_datatab_mwst10-taxk1.
      Append ls_komk to lt_komk.
      ls_komp-taxm1 = gs_datatab_mwst10-taxm1.
      ls_komp-mwskz = gs_datatab_mwst10-mwsk1. "MWSK for MWST conditions
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '002'.
      lv_kschl = 'MWST'.
      lv_datab = gs_datatab_mwst10-datab.
      lv_datbi = gs_datatab_mwst10-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'MWST'.
      ls_komv-kbetr = gs_datatab_mwst10-kbetr.
      ls_komv-kpein = gs_datatab_mwst10-kpein.
      ls_komv-kmein = gs_datatab_mwst10-kmein.
      ls_komv-waers = gs_datatab_mwst10-konwa.
      ls_komv-mwsk1 = gs_datatab_mwst10-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on mwst10 tab
Endif. "MWST10
**************************************MWST10

******************* MWST11 ***************
If rb_mws11 = 'X'.
  IF gt_work_tab_mwst11[] IS NOT INITIAL.

    LOOP AT gt_work_tab_mwst11 INTO gs_work_tab_mwst11.

      CLEAR: gs_datatab_mwst11.
      MOVE-CORRESPONDING gs_work_tab_mwst11 TO gs_datatab_mwst11.
      APPEND gs_datatab_mwst11 TO gt_datatab_mwst11.
    ENDLOOP.

    LOOP AT gt_datatab_mwst11 INTO gs_datatab_mwst11.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_mwst11-matnr
*            IMPORTING
*              output = gs_datatab_mwst11-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_mwst11-kunnr
*            IMPORTING
*              output = gs_datatab_mwst11-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_mwst11-aland.
      ls_komg-lland = gs_datatab_mwst11-lland.
      ls_komg-taxk1 = gs_datatab_mwst11-taxk1.
      ls_komg-taxm1 = gs_datatab_mwst11-taxm1.
      ls_komg-mwskz = gs_datatab_mwst11-mwsk1. "MWSK for MWST conditions
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-aland = gs_datatab_mwst11-aland.
      ls_komk-land1 = gs_datatab_mwst11-lland.
      ls_komk-taxk1 = gs_datatab_mwst11-taxk1.
      Append ls_komk to lt_komk.
      ls_komp-taxm1 = gs_datatab_mwst11-taxm1.
      ls_komp-mwskz = gs_datatab_mwst11-mwsk1. "MWSK for MWST conditions
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '612'.
      lv_kschl = 'MWST'.
      lv_datab = gs_datatab_mwst11-datab.
      lv_datbi = gs_datatab_mwst11-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'MWST'.
      ls_komv-kbetr = gs_datatab_mwst11-kbetr.
      ls_komv-kpein = gs_datatab_mwst11-kpein.
      ls_komv-kmein = gs_datatab_mwst11-kmein.
      ls_komv-waers = gs_datatab_mwst11-konwa.
      ls_komv-mwsk1 = gs_datatab_mwst11-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on mwst11 tab
Endif. "MWST11
**************************************MWST11

******************* IPVA2 ***************
If rb_ipva2 = 'X'.
  IF gt_work_tab_ipva2[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ipva2 INTO gs_work_tab_ipva2.

      CLEAR: gs_datatab_ipva2.
      MOVE-CORRESPONDING gs_work_tab_ipva2 TO gs_datatab_ipva2.
      APPEND gs_datatab_ipva2 TO gt_datatab_ipva2.
    ENDLOOP.

    LOOP AT gt_datatab_ipva2 INTO gs_datatab_ipva2.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ipva2-matnr
*            IMPORTING
*              output = gs_datatab_ipva2-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ipva2-kunnr
*            IMPORTING
*              output = gs_datatab_ipva2-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ipva2-aland.
      ls_komg-dynkey1 = gs_datatab_ipva2-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ipva2-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ipva2-dynkey3.
      ls_komg-taxgroup = gs_datatab_ipva2-taxgroup.
      ls_komg-mwskz = gs_datatab_ipva2-mwsk1. "MWSK for MWST conditions
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-aland = gs_datatab_ipva2-aland.
      Append ls_komk to lt_komk.
      ls_komp-mwskz = gs_datatab_ipva2-mwsk1. "MWSK for MWST conditions
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'IPVA'.
      lv_datab = gs_datatab_ipva2-datab.
      lv_datbi = gs_datatab_ipva2-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'IPVA'.
      ls_komv-kbetr = gs_datatab_ipva2-kbetr.
      ls_komv-kpein = gs_datatab_ipva2-kpein.
      ls_komv-kmein = gs_datatab_ipva2-kmein.
      ls_komv-waers = gs_datatab_ipva2-konwa.
      ls_komv-mwsk1 = gs_datatab_ipva2-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ipva2 tab
Endif. "IPVA2
**************************************IPVA2

******************* IPBS2 ***************
If rb_ipbs2 = 'X'.
  IF gt_work_tab_ipbs2[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ipbs2 INTO gs_work_tab_ipbs2.

      CLEAR: gs_datatab_ipbs2.
      MOVE-CORRESPONDING gs_work_tab_ipbs2 TO gs_datatab_ipbs2.
      APPEND gs_datatab_ipbs2 TO gt_datatab_ipbs2.
    ENDLOOP.

    LOOP AT gt_datatab_ipbs2 INTO gs_datatab_ipbs2.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ipbs2-matnr
*            IMPORTING
*              output = gs_datatab_ipbs2-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ipbs2-kunnr
*            IMPORTING
*              output = gs_datatab_ipbs2-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ipbs2-aland.
      ls_komg-dynkey1 = gs_datatab_ipbs2-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ipbs2-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ipbs2-dynkey3.
      ls_komg-taxgroup = gs_datatab_ipbs2-taxgroup.
      ls_komg-mwskz = gs_datatab_ipbs2-mwsk1. "MWSK for MWST conditions
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-aland = gs_datatab_ipbs2-aland.
      Append ls_komk to lt_komk.
      ls_komp-mwskz = gs_datatab_ipbs2-mwsk1. "MWSK for MWST conditions
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'IPBS'.
      lv_datab = gs_datatab_ipbs2-datab.
      lv_datbi = gs_datatab_ipbs2-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'IPBS'.
      ls_komv-kbetr = gs_datatab_ipbs2-kbetr.
      ls_komv-kpein = gs_datatab_ipbs2-kpein.
      ls_komv-kmein = gs_datatab_ipbs2-kmein.
      ls_komv-waers = gs_datatab_ipbs2-konwa.
      ls_komv-mwsk1 = gs_datatab_ipbs2-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ipbs2 tab
Endif. "IPBS2
**************************************IPBS2

******************* IPLW2 ***************
If rb_iplw2 = 'X'.
  IF gt_work_tab_iplw2[] IS NOT INITIAL.

    LOOP AT gt_work_tab_iplw2 INTO gs_work_tab_iplw2.

      CLEAR: gs_datatab_iplw2.
      MOVE-CORRESPONDING gs_work_tab_iplw2 TO gs_datatab_iplw2.
      APPEND gs_datatab_iplw2 TO gt_datatab_iplw2.
    ENDLOOP.

    LOOP AT gt_datatab_iplw2 INTO gs_datatab_iplw2.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_iplw2-matnr
*            IMPORTING
*              output = gs_datatab_iplw2-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_iplw2-kunnr
*            IMPORTING
*              output = gs_datatab_iplw2-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_iplw2-aland.
      ls_komg-dynkey1 = gs_datatab_iplw2-dynkey1.
      ls_komg-dynkey2 = gs_datatab_iplw2-dynkey2.
      ls_komg-dynkey3 = gs_datatab_iplw2-dynkey3.
      ls_komg-taxgroup = gs_datatab_iplw2-taxgroup.
      ls_komg-mwskz = gs_datatab_iplw2-mwsk1. "MWSK for MWST conditions
      Append ls_komg to lt_komg.

" fill KOMK KOMP
*      ls_komk-vkorg = p_vkorgn.
      ls_komk-aland = gs_datatab_iplw2-aland.
      Append ls_komk to lt_komk.
      ls_komp-mwskz = gs_datatab_iplw2-mwsk1. "MWSK for MWST conditions
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'IPLW'.
      lv_datab = gs_datatab_iplw2-datab.
      lv_datbi = gs_datatab_iplw2-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'IPLW'.
      ls_komv-kbetr = gs_datatab_iplw2-kbetr.
      ls_komv-kpein = gs_datatab_iplw2-kpein.
      ls_komv-kmein = gs_datatab_iplw2-kmein.
      ls_komv-waers = gs_datatab_iplw2-konwa.
      ls_komv-mwsk1 = gs_datatab_iplw2-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on iplw2 tab
Endif. "IPLW2
**************************************IPLW2

******************* ICBS2 ***************
If rb_icbs2 = 'X'.
  IF gt_work_tab_icbs2[] IS NOT INITIAL.

    LOOP AT gt_work_tab_icbs2 INTO gs_work_tab_icbs2.

      CLEAR: gs_datatab_icbs2.
      MOVE-CORRESPONDING gs_work_tab_icbs2 TO gs_datatab_icbs2.
      APPEND gs_datatab_icbs2 TO gt_datatab_icbs2.
    ENDLOOP.

    LOOP AT gt_datatab_icbs2 INTO gs_datatab_icbs2.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_icbs2-matnr
*            IMPORTING
*              output = gs_datatab_icbs2-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_icbs2-kunnr
*            IMPORTING
*              output = gs_datatab_icbs2-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_icbs2-aland.
      ls_komg-doctyp = gs_datatab_icbs2-doctyp.
      ls_komg-txreg_sf = gs_datatab_icbs2-txreg_sf.
      ls_komg-txreg_st = gs_datatab_icbs2-txreg_st.
      ls_komg-dynkey1 = gs_datatab_icbs2-dynkey1.
      ls_komg-dynkey2 = gs_datatab_icbs2-dynkey2.
      ls_komg-dynkey3 = gs_datatab_icbs2-dynkey3.
      ls_komg-taxgroup = gs_datatab_icbs2-taxgroup.
      ls_komg-mwskz = gs_datatab_icbs2-mwsk1. "MWSK for MWST conditions
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_icbs2-aland.
      ls_komk-doctyp = gs_datatab_icbs2-doctyp.
      Append ls_komk to lt_komk.
      ls_komp-txreg_sf = gs_datatab_icbs2-txreg_sf.
      ls_komp-txreg_st = gs_datatab_icbs2-txreg_st.
      ls_komp-mwskz = gs_datatab_icbs2-mwsk1. "MWSK for MWST conditions
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '382'.
      lv_kschl = 'ICBS'.
      lv_datab = gs_datatab_icbs2-datab.
      lv_datbi = gs_datatab_icbs2-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ICBS'.
      ls_komv-kbetr = gs_datatab_icbs2-kbetr.
      ls_komv-kpein = gs_datatab_icbs2-kpein.
      ls_komv-kmein = gs_datatab_icbs2-kmein.
      ls_komv-waers = gs_datatab_icbs2-konwa.
      ls_komv-mwsk1 = gs_datatab_icbs2-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on icbs2 tab
Endif. "ICBS2
**************************************ICBS2

******************* ICVA1 ***************
If rb_icva1 = 'X'.
  IF gt_work_tab_icva1[] IS NOT INITIAL.

    LOOP AT gt_work_tab_icva1 INTO gs_work_tab_icva1.

      CLEAR: gs_datatab_icva1.
      MOVE-CORRESPONDING gs_work_tab_icva1 TO gs_datatab_icva1.
      APPEND gs_datatab_icva1 TO gt_datatab_icva1.
    ENDLOOP.

    LOOP AT gt_datatab_icva1 INTO gs_datatab_icva1.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_icva1-matnr
*            IMPORTING
*              output = gs_datatab_icva1-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_icva1-kunnr
*            IMPORTING
*              output = gs_datatab_icva1-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_icva1-aland.
      ls_komg-doctyp = gs_datatab_icva1-doctyp.
      ls_komg-txreg_sf = gs_datatab_icva1-txreg_sf.
      ls_komg-txreg_st = gs_datatab_icva1-txreg_st.
      ls_komg-dynkey1 = gs_datatab_icva1-dynkey1.
      ls_komg-dynkey2 = gs_datatab_icva1-dynkey2.
      ls_komg-dynkey3 = gs_datatab_icva1-dynkey3.
      ls_komg-taxgroup = gs_datatab_icva1-taxgroup.
      ls_komg-mwskz = gs_datatab_icva1-mwsk1. "MWSK for MWST conditions
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_icva1-aland.
      ls_komk-doctyp = gs_datatab_icva1-doctyp.
      Append ls_komk to lt_komk.
      ls_komp-txreg_sf = gs_datatab_icva1-txreg_sf.
      ls_komp-txreg_st = gs_datatab_icva1-txreg_st.
      ls_komp-mwskz = gs_datatab_icva1-mwsk1. "MWSK for MWST conditions
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '382'.
      lv_kschl = 'ICVA'.
      lv_datab = gs_datatab_icva1-datab.
      lv_datbi = gs_datatab_icva1-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ICVA'.
      ls_komv-kbetr = gs_datatab_icva1-kbetr.
      ls_komv-kpein = gs_datatab_icva1-kpein.
      ls_komv-kmein = gs_datatab_icva1-kmein.
      ls_komv-waers = gs_datatab_icva1-konwa.
      ls_komv-mwsk1 = gs_datatab_icva1-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on icva1 tab
Endif. "ICVA1
**************************************ICVA1

******************* YPR11 ***************
If rb_ypr11 = 'X'.
  IF gt_work_tab_ypr11[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ypr11 INTO gs_work_tab_ypr11.

      CLEAR: gs_datatab_ypr11.
      MOVE-CORRESPONDING gs_work_tab_ypr11 TO gs_datatab_ypr11.
      APPEND gs_datatab_ypr11 TO gt_datatab_ypr11.
    ENDLOOP.

    LOOP AT gt_datatab_ypr11 INTO gs_datatab_ypr11.
          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = gs_datatab_ypr11-matnr
            IMPORTING
              output = gs_datatab_ypr11-matnr.

*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ypr11-kunnr
*            IMPORTING
*              output = gs_datatab_ypr11-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-lland = gs_datatab_ypr11-land1.
      ls_komg-matnr = gs_datatab_ypr11-matnr.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-land1 = gs_datatab_ypr11-land1.
      Append ls_komk to lt_komk.
*      ls_komp-txreg_sf = gs_datatab_ypr11-txreg_sf.
*      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '572'.
      lv_kschl = 'YPR1'.
      lv_datab = gs_datatab_ypr11-datab.
      lv_datbi = gs_datatab_ypr11-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YPR1'.
      ls_komv-kbetr = gs_datatab_ypr11-kbetr.
      ls_komv-kpein = gs_datatab_ypr11-kpein.
      ls_komv-kmein = gs_datatab_ypr11-kmein.
      ls_komv-waers = gs_datatab_ypr11-konwa.
*      ls_komv-mwsk1 = gs_datatab_ypr11-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ypr11 tab
Endif. "YPR11
**************************************YPR11

******************* YK7114 ***************
If rb_yk714 = 'X'.
  IF gt_work_tab_yk7114[] IS NOT INITIAL.

    LOOP AT gt_work_tab_yk7114 INTO gs_work_tab_yk7114.

      CLEAR: gs_datatab_yk7114.
      MOVE-CORRESPONDING gs_work_tab_yk7114 TO gs_datatab_yk7114.
      APPEND gs_datatab_yk7114 TO gt_datatab_yk7114.
    ENDLOOP.

    LOOP AT gt_datatab_yk7114 INTO gs_datatab_yk7114.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_yk7114-matnr
*            IMPORTING
*              output = gs_datatab_yk7114-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_yk7114-kunnr
*            IMPORTING
*              output = gs_datatab_yk7114-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-vkorg = gs_datatab_yk7114-vkorg.
      ls_komg-konda = gs_datatab_yk7114-konda.
      ls_komg-yyprgrp = gs_datatab_yk7114-yyprgrp.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-konda = gs_datatab_yk7114-konda.
      ls_komk-vkorg = gs_datatab_yk7114-vkorg.
      Append ls_komk to lt_komk.
      ls_komp-yyprgrp = gs_datatab_yk7114-yyprgrp.
      Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '912'.
      lv_kschl = 'YK71'.
      lv_datab = gs_datatab_yk7114-datab.
      lv_datbi = gs_datatab_yk7114-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'YK71'.
      ls_komv-kbetr = gs_datatab_yk7114-kbetr.
      ls_komv-kpein = gs_datatab_yk7114-kpein.
      ls_komv-kmein = gs_datatab_yk7114-kmein.
      ls_komv-waers = gs_datatab_yk7114-konwa.
*      ls_komv-mwsk1 = gs_datatab_yk7114-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on yk7114 tab
Endif. "YK7114
**************************************YK7114

******************* BW01 ***************
If rb_bw01 = 'X'.
    IF gt_work_tab_BW01[] IS NOT INITIAL.

      LOOP AT gt_work_tab_BW01 INTO gs_work_tab_BW01.

        CLEAR: gs_datatab_BW01.
        MOVE-CORRESPONDING gs_work_tab_BW01 TO gs_datatab_BW01.
        APPEND gs_datatab_BW01 TO gt_datatab_BW01.
      ENDLOOP.

      LOOP AT gt_datatab_BW01 INTO gs_datatab_BW01.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_bw01-matnr
*            IMPORTING
*              output = gs_datatab_bw01-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_bw01-kunnr
*            IMPORTING
*              output = gs_datatab_bw01-kunnr.

  "fill FM parameters
        Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
        Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
        Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
  "fill komg
        ls_komg-aland = gs_datatab_bw01-aland.
        ls_komg-dynkey1 = gs_datatab_bw01-dynkey1.
        ls_komg-dynkey2 = gs_datatab_bw01-dynkey2.
        ls_komg-dynkey3 = gs_datatab_bw01-dynkey3.
        ls_komg-taxgroup = gs_datatab_bw01-taxgroup.
        Append ls_komg to lt_komg.

  " fill KOMK KOMP
      ls_komk-aland = gs_datatab_bw01-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_bw01-yyprgrp.
*     Append ls_komp to lt_komp.

  " fill komv
        lv_kotabnr = '346'.
        lv_kschl = 'BW01'.
        lv_datab = gs_datatab_bw01-datab.
        lv_datbi = gs_datatab_bw01-datbi.

        ls_komv-kappl = 'V'.
        ls_komv-kschl = 'BW01'.
        ls_komv-kbetr = gs_datatab_bw01-kbetr.
        ls_komv-kpein = gs_datatab_bw01-kpein.
        ls_komv-kmein = gs_datatab_bw01-kmein.
        ls_komv-waers = gs_datatab_bw01-konwa.
*      ls_komv-mwsk1 = gs_datatab_bw01-mwsk1. "MWSK for MWST conditions
        Append ls_komv to lt_komv.

        perform PR_COPY.

"         *************** end fill
        ENDLOOP. "gt_datatab.
    Endif. "check on BW01 tab
  Endif. "BW01
**************************************BW01

******************* BW02 ***************
If rb_BW02 = 'X'.
  IF gt_work_tab_BW02[] IS NOT INITIAL.

    LOOP AT gt_work_tab_BW02 INTO gs_work_tab_BW02.

      CLEAR: gs_datatab_BW02.
      MOVE-CORRESPONDING gs_work_tab_BW02 TO gs_datatab_BW02.
      APPEND gs_datatab_BW02 TO gt_datatab_BW02.
    ENDLOOP.

    LOOP AT gt_datatab_BW02 INTO gs_datatab_BW02.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW02-matnr
*            IMPORTING
*              output = gs_datatab_BW02-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW02-kunnr
*            IMPORTING
*              output = gs_datatab_BW02-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_BW02-aland.
      ls_komg-dynkey1 = gs_datatab_BW02-dynkey1.
      ls_komg-dynkey2 = gs_datatab_BW02-dynkey2.
      ls_komg-dynkey3 = gs_datatab_BW02-dynkey3.
      ls_komg-taxgroup = gs_datatab_BW02-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_BW02-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_BW02-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'BW02'.
      lv_datab = gs_datatab_BW02-datab.
      lv_datbi = gs_datatab_BW02-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'BW02'.
      ls_komv-kbetr = gs_datatab_BW02-kbetr.
      ls_komv-kpein = gs_datatab_BW02-kpein.
      ls_komv-kmein = gs_datatab_BW02-kmein.
      ls_komv-waers = gs_datatab_BW02-konwa.
*      ls_komv-mwsk1 = gs_datatab_BW02-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on BW02 tab
Endif. "BW02
**************************************BW02

******************* BW11 ***************
If rb_BW11 = 'X'.
  IF gt_work_tab_BW11[] IS NOT INITIAL.

    LOOP AT gt_work_tab_BW11 INTO gs_work_tab_BW11.

      CLEAR: gs_datatab_BW11.
      MOVE-CORRESPONDING gs_work_tab_BW11 TO gs_datatab_BW11.
      APPEND gs_datatab_BW11 TO gt_datatab_BW11.
    ENDLOOP.

    LOOP AT gt_datatab_BW11 INTO gs_datatab_BW11.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW11-matnr
*            IMPORTING
*              output = gs_datatab_BW11-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW11-kunnr
*            IMPORTING
*              output = gs_datatab_BW11-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_BW11-aland.
      ls_komg-dynkey1 = gs_datatab_BW11-dynkey1.
      ls_komg-dynkey2 = gs_datatab_BW11-dynkey2.
      ls_komg-dynkey3 = gs_datatab_BW11-dynkey3.
      ls_komg-taxgroup = gs_datatab_BW11-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_BW11-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_BW11-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'BW11'.
      lv_datab = gs_datatab_BW11-datab.
      lv_datbi = gs_datatab_BW11-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'BW11'.
      ls_komv-kbetr = gs_datatab_BW11-kbetr.
      ls_komv-kpein = gs_datatab_BW11-kpein.
      ls_komv-kmein = gs_datatab_BW11-kmein.
      ls_komv-waers = gs_datatab_BW11-konwa.
*      ls_komv-mwsk1 = gs_datatab_BW11-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on BW11 tab
Endif. "BW11
**************************************BW11

******************* BW12 ***************
If rb_BW12 = 'X'.
  IF gt_work_tab_BW12[] IS NOT INITIAL.

    LOOP AT gt_work_tab_BW12 INTO gs_work_tab_BW12.

      CLEAR: gs_datatab_BW12.
      MOVE-CORRESPONDING gs_work_tab_BW12 TO gs_datatab_BW12.
      APPEND gs_datatab_BW12 TO gt_datatab_BW12.
    ENDLOOP.

    LOOP AT gt_datatab_BW12 INTO gs_datatab_BW12.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW12-matnr
*            IMPORTING
*              output = gs_datatab_BW12-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW12-kunnr
*            IMPORTING
*              output = gs_datatab_BW12-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_BW12-aland.
      ls_komg-dynkey1 = gs_datatab_BW12-dynkey1.
      ls_komg-dynkey2 = gs_datatab_BW12-dynkey2.
      ls_komg-dynkey3 = gs_datatab_BW12-dynkey3.
      ls_komg-taxgroup = gs_datatab_BW12-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_BW12-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_BW12-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'BW12'.
      lv_datab = gs_datatab_BW12-datab.
      lv_datbi = gs_datatab_BW12-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'BW12'.
      ls_komv-kbetr = gs_datatab_BW12-kbetr.
      ls_komv-kpein = gs_datatab_BW12-kpein.
      ls_komv-kmein = gs_datatab_BW12-kmein.
      ls_komv-waers = gs_datatab_BW12-konwa.
*      ls_komv-mwsk1 = gs_datatab_BW12-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on BW12 tab
Endif. "BW12
**************************************BW12

******************* BW21 ***************
If rb_BW21 = 'X'.
  IF gt_work_tab_BW21[] IS NOT INITIAL.

    LOOP AT gt_work_tab_BW21 INTO gs_work_tab_BW21.

      CLEAR: gs_datatab_BW21.
      MOVE-CORRESPONDING gs_work_tab_BW21 TO gs_datatab_BW21.
      APPEND gs_datatab_BW21 TO gt_datatab_BW21.
    ENDLOOP.

    LOOP AT gt_datatab_BW21 INTO gs_datatab_BW21.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW21-matnr
*            IMPORTING
*              output = gs_datatab_BW21-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW21-kunnr
*            IMPORTING
*              output = gs_datatab_BW21-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_BW21-aland.
      ls_komg-dynkey1 = gs_datatab_BW21-dynkey1.
      ls_komg-dynkey2 = gs_datatab_BW21-dynkey2.
      ls_komg-dynkey3 = gs_datatab_BW21-dynkey3.
      ls_komg-taxgroup = gs_datatab_BW21-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_BW21-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_BW21-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'BW21'.
      lv_datab = gs_datatab_BW21-datab.
      lv_datbi = gs_datatab_BW21-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'BW21'.
      ls_komv-kbetr = gs_datatab_BW21-kbetr.
      ls_komv-kpein = gs_datatab_BW21-kpein.
      ls_komv-kmein = gs_datatab_BW21-kmein.
      ls_komv-waers = gs_datatab_BW21-konwa.
*      ls_komv-mwsk1 = gs_datatab_BW21-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on BW21 tab
Endif. "BW21
**************************************BW21

******************* BW22 ***************
If rb_BW22 = 'X'.
  IF gt_work_tab_BW22[] IS NOT INITIAL.

    LOOP AT gt_work_tab_BW22 INTO gs_work_tab_BW22.

      CLEAR: gs_datatab_BW22.
      MOVE-CORRESPONDING gs_work_tab_BW22 TO gs_datatab_BW22.
      APPEND gs_datatab_BW22 TO gt_datatab_BW22.
    ENDLOOP.

    LOOP AT gt_datatab_BW22 INTO gs_datatab_BW22.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW22-matnr
*            IMPORTING
*              output = gs_datatab_BW22-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW22-kunnr
*            IMPORTING
*              output = gs_datatab_BW22-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_BW22-aland.
      ls_komg-dynkey1 = gs_datatab_BW22-dynkey1.
      ls_komg-dynkey2 = gs_datatab_BW22-dynkey2.
      ls_komg-dynkey3 = gs_datatab_BW22-dynkey3.
      ls_komg-taxgroup = gs_datatab_BW22-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_BW22-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_BW22-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'BW22'.
      lv_datab = gs_datatab_BW22-datab.
      lv_datbi = gs_datatab_BW22-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'BW22'.
      ls_komv-kbetr = gs_datatab_BW22-kbetr.
      ls_komv-kpein = gs_datatab_BW22-kpein.
      ls_komv-kmein = gs_datatab_BW22-kmein.
      ls_komv-waers = gs_datatab_BW22-konwa.
*      ls_komv-mwsk1 = gs_datatab_BW22-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on BW22 tab
Endif. "BW22
**************************************BW22

******************* BW31 ***************
If rb_BW31 = 'X'.
  IF gt_work_tab_BW31[] IS NOT INITIAL.

    LOOP AT gt_work_tab_BW31 INTO gs_work_tab_BW31.

      CLEAR: gs_datatab_BW31.
      MOVE-CORRESPONDING gs_work_tab_BW31 TO gs_datatab_BW31.
      APPEND gs_datatab_BW31 TO gt_datatab_BW31.
    ENDLOOP.

    LOOP AT gt_datatab_BW31 INTO gs_datatab_BW31.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW31-matnr
*            IMPORTING
*              output = gs_datatab_BW31-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW31-kunnr
*            IMPORTING
*              output = gs_datatab_BW31-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_BW31-aland.
      ls_komg-dynkey1 = gs_datatab_BW31-dynkey1.
      ls_komg-dynkey2 = gs_datatab_BW31-dynkey2.
      ls_komg-dynkey3 = gs_datatab_BW31-dynkey3.
      ls_komg-taxgroup = gs_datatab_BW31-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_BW31-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_BW31-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'BW31'.
      lv_datab = gs_datatab_BW31-datab.
      lv_datbi = gs_datatab_BW31-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'BW31'.
      ls_komv-kbetr = gs_datatab_BW31-kbetr.
      ls_komv-kpein = gs_datatab_BW31-kpein.
      ls_komv-kmein = gs_datatab_BW31-kmein.
      ls_komv-waers = gs_datatab_BW31-konwa.
*      ls_komv-mwsk1 = gs_datatab_BW31-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on BW31 tab
Endif. "BW31
**************************************BW31

******************* BW32 ***************
If rb_BW32 = 'X'.
  IF gt_work_tab_BW32[] IS NOT INITIAL.

    LOOP AT gt_work_tab_BW32 INTO gs_work_tab_BW32.

      CLEAR: gs_datatab_BW32.
      MOVE-CORRESPONDING gs_work_tab_BW32 TO gs_datatab_BW32.
      APPEND gs_datatab_BW32 TO gt_datatab_BW32.
    ENDLOOP.

    LOOP AT gt_datatab_BW32 INTO gs_datatab_BW32.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW32-matnr
*            IMPORTING
*              output = gs_datatab_BW32-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW32-kunnr
*            IMPORTING
*              output = gs_datatab_BW32-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_BW32-aland.
      ls_komg-dynkey1 = gs_datatab_BW32-dynkey1.
      ls_komg-dynkey2 = gs_datatab_BW32-dynkey2.
      ls_komg-dynkey3 = gs_datatab_BW32-dynkey3.
      ls_komg-taxgroup = gs_datatab_BW32-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_BW32-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_BW32-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'BW32'.
      lv_datab = gs_datatab_BW32-datab.
      lv_datbi = gs_datatab_BW32-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'BW32'.
      ls_komv-kbetr = gs_datatab_BW32-kbetr.
      ls_komv-kpein = gs_datatab_BW32-kpein.
      ls_komv-kmein = gs_datatab_BW32-kmein.
      ls_komv-waers = gs_datatab_BW32-konwa.
*      ls_komv-mwsk1 = gs_datatab_BW32-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on BW32 tab
Endif. "BW32
**************************************BW32

******************* BW41 ***************
If rb_BW41 = 'X'.
  IF gt_work_tab_BW41[] IS NOT INITIAL.

    LOOP AT gt_work_tab_BW41 INTO gs_work_tab_BW41.

      CLEAR: gs_datatab_BW41.
      MOVE-CORRESPONDING gs_work_tab_BW41 TO gs_datatab_BW41.
      APPEND gs_datatab_BW41 TO gt_datatab_BW41.
    ENDLOOP.

    LOOP AT gt_datatab_BW41 INTO gs_datatab_BW41.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW41-matnr
*            IMPORTING
*              output = gs_datatab_BW41-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW41-kunnr
*            IMPORTING
*              output = gs_datatab_BW41-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_BW41-aland.
      ls_komg-dynkey1 = gs_datatab_BW41-dynkey1.
      ls_komg-dynkey2 = gs_datatab_BW41-dynkey2.
      ls_komg-dynkey3 = gs_datatab_BW41-dynkey3.
      ls_komg-taxgroup = gs_datatab_BW41-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_BW41-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_BW41-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'BW41'.
      lv_datab = gs_datatab_BW41-datab.
      lv_datbi = gs_datatab_BW41-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'BW41'.
      ls_komv-kbetr = gs_datatab_BW41-kbetr.
      ls_komv-kpein = gs_datatab_BW41-kpein.
      ls_komv-kmein = gs_datatab_BW41-kmein.
      ls_komv-waers = gs_datatab_BW41-konwa.
*      ls_komv-mwsk1 = gs_datatab_BW41-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on BW41 tab
Endif. "BW41
**************************************BW41

******************* BW42 ***************
If rb_BW42 = 'X'.
  IF gt_work_tab_BW42[] IS NOT INITIAL.

    LOOP AT gt_work_tab_BW42 INTO gs_work_tab_BW42.

      CLEAR: gs_datatab_BW42.
      MOVE-CORRESPONDING gs_work_tab_BW42 TO gs_datatab_BW42.
      APPEND gs_datatab_BW42 TO gt_datatab_BW42.
    ENDLOOP.

    LOOP AT gt_datatab_BW42 INTO gs_datatab_BW42.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW42-matnr
*            IMPORTING
*              output = gs_datatab_BW42-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW42-kunnr
*            IMPORTING
*              output = gs_datatab_BW42-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_BW42-aland.
      ls_komg-dynkey1 = gs_datatab_BW42-dynkey1.
      ls_komg-dynkey2 = gs_datatab_BW42-dynkey2.
      ls_komg-dynkey3 = gs_datatab_BW42-dynkey3.
      ls_komg-taxgroup = gs_datatab_BW42-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_BW42-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_BW42-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'BW42'.
      lv_datab = gs_datatab_BW42-datab.
      lv_datbi = gs_datatab_BW42-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'BW42'.
      ls_komv-kbetr = gs_datatab_BW42-kbetr.
      ls_komv-kpein = gs_datatab_BW42-kpein.
      ls_komv-kmein = gs_datatab_BW42-kmein.
      ls_komv-waers = gs_datatab_BW42-konwa.
*      ls_komv-mwsk1 = gs_datatab_BW42-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on BW42 tab
Endif. "BW42
**************************************BW42

******************* BW51 ***************
If rb_BW51 = 'X'.
  IF gt_work_tab_BW51[] IS NOT INITIAL.

    LOOP AT gt_work_tab_BW51 INTO gs_work_tab_BW51.

      CLEAR: gs_datatab_BW51.
      MOVE-CORRESPONDING gs_work_tab_BW51 TO gs_datatab_BW51.
      APPEND gs_datatab_BW51 TO gt_datatab_BW51.
    ENDLOOP.

    LOOP AT gt_datatab_BW51 INTO gs_datatab_BW51.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW51-matnr
*            IMPORTING
*              output = gs_datatab_BW51-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_BW51-kunnr
*            IMPORTING
*              output = gs_datatab_BW51-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_BW51-aland.
      ls_komg-dynkey1 = gs_datatab_BW51-dynkey1.
      ls_komg-dynkey2 = gs_datatab_BW51-dynkey2.
      ls_komg-dynkey3 = gs_datatab_BW51-dynkey3.
      ls_komg-taxgroup = gs_datatab_BW51-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_BW51-aland.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_BW51-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '346'.
      lv_kschl = 'BW51'.
      lv_datab = gs_datatab_BW51-datab.
      lv_datbi = gs_datatab_BW51-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'BW51'.
      ls_komv-kbetr = gs_datatab_BW51-kbetr.
      ls_komv-kpein = gs_datatab_BW51-kpein.
      ls_komv-kmein = gs_datatab_BW51-kmein.
      ls_komv-waers = gs_datatab_BW51-konwa.
*      ls_komv-mwsk1 = gs_datatab_BW51-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on BW51 tab
Endif. "BW51
**************************************BW51

******************* ISVB ***************
If rb_ISVB = 'X'.
  IF gt_work_tab_ISVB[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISVB INTO gs_work_tab_ISVB.

      CLEAR: gs_datatab_ISVB.
      MOVE-CORRESPONDING gs_work_tab_ISVB TO gs_datatab_ISVB.
      APPEND gs_datatab_ISVB TO gt_datatab_ISVB.
    ENDLOOP.

    LOOP AT gt_datatab_ISVB INTO gs_datatab_ISVB.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISVB-matnr
*            IMPORTING
*              output = gs_datatab_ISVB-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISVB-kunnr
*            IMPORTING
*              output = gs_datatab_ISVB-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISVB-aland.
      ls_komg-txjcd = gs_datatab_ISVB-txjcd.
      ls_komg-dynkey1 = gs_datatab_ISVB-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISVB-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISVB-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISVB-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISVB-aland.
      ls_komk-txjcd = gs_datatab_ISVB-txjcd.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_ISVB-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '601'.
      lv_kschl = 'ISVB'.
      lv_datab = gs_datatab_ISVB-datab.
      lv_datbi = gs_datatab_ISVB-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISVB'.
      ls_komv-kbetr = gs_datatab_ISVB-kbetr.
      ls_komv-kpein = gs_datatab_ISVB-kpein.
      ls_komv-kmein = gs_datatab_ISVB-kmein.
      ls_komv-waers = gs_datatab_ISVB-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISVB-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISVB tab
Endif. "ISVB
**************************************ISVB

******************* ISVC ***************
If rb_ISVC = 'X'.
  IF gt_work_tab_ISVC[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISVC INTO gs_work_tab_ISVC.

      CLEAR: gs_datatab_ISVC.
      MOVE-CORRESPONDING gs_work_tab_ISVC TO gs_datatab_ISVC.
      APPEND gs_datatab_ISVC TO gt_datatab_ISVC.
    ENDLOOP.

    LOOP AT gt_datatab_ISVC INTO gs_datatab_ISVC.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISVC-matnr
*            IMPORTING
*              output = gs_datatab_ISVC-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISVC-kunnr
*            IMPORTING
*              output = gs_datatab_ISVC-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISVC-aland.
      ls_komg-txjcd = gs_datatab_ISVC-txjcd.
      ls_komg-dynkey1 = gs_datatab_ISVC-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISVC-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISVC-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISVC-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISVC-aland.
      ls_komk-txjcd = gs_datatab_ISVC-txjcd.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_ISVC-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '601'.
      lv_kschl = 'ISVC'.
      lv_datab = gs_datatab_ISVC-datab.
      lv_datbi = gs_datatab_ISVC-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISVC'.
      ls_komv-kbetr = gs_datatab_ISVC-kbetr.
      ls_komv-kpein = gs_datatab_ISVC-kpein.
      ls_komv-kmein = gs_datatab_ISVC-kmein.
      ls_komv-waers = gs_datatab_ISVC-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISVC-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISVC tab
Endif. "ISVC
**************************************ISVC

******************* ISVD ***************
If rb_ISVD = 'X'.
  IF gt_work_tab_ISVD[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISVD INTO gs_work_tab_ISVD.

      CLEAR: gs_datatab_ISVD.
      MOVE-CORRESPONDING gs_work_tab_ISVD TO gs_datatab_ISVD.
      APPEND gs_datatab_ISVD TO gt_datatab_ISVD.
    ENDLOOP.

    LOOP AT gt_datatab_ISVD INTO gs_datatab_ISVD.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISVD-matnr
*            IMPORTING
*              output = gs_datatab_ISVD-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISVD-kunnr
*            IMPORTING
*              output = gs_datatab_ISVD-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISVD-aland.
      ls_komg-txjcd = gs_datatab_ISVD-txjcd.
      ls_komg-dynkey1 = gs_datatab_ISVD-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISVD-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISVD-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISVD-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISVD-aland.
      ls_komk-txjcd = gs_datatab_ISVD-txjcd.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_ISVD-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '601'.
      lv_kschl = 'ISVD'.
      lv_datab = gs_datatab_ISVD-datab.
      lv_datbi = gs_datatab_ISVD-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISVD'.
      ls_komv-kbetr = gs_datatab_ISVD-kbetr.
      ls_komv-kpein = gs_datatab_ISVD-kpein.
      ls_komv-kmein = gs_datatab_ISVD-kmein.
      ls_komv-waers = gs_datatab_ISVD-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISVD-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISVD tab
Endif. "ISVD
**************************************ISVD

******************* ISVF ***************
If rb_ISVF = 'X'.
  IF gt_work_tab_ISVF[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISVF INTO gs_work_tab_ISVF.

      CLEAR: gs_datatab_ISVF.
      MOVE-CORRESPONDING gs_work_tab_ISVF TO gs_datatab_ISVF.
      APPEND gs_datatab_ISVF TO gt_datatab_ISVF.
    ENDLOOP.

    LOOP AT gt_datatab_ISVF INTO gs_datatab_ISVF.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISVF-matnr
*            IMPORTING
*              output = gs_datatab_ISVF-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISVF-kunnr
*            IMPORTING
*              output = gs_datatab_ISVF-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISVF-aland.
      ls_komg-txjcd = gs_datatab_ISVF-txjcd.
      ls_komg-dynkey1 = gs_datatab_ISVF-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISVF-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISVF-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISVF-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISVF-aland.
      ls_komk-txjcd = gs_datatab_ISVF-txjcd.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_ISVF-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '601'.
      lv_kschl = 'ISVF'.
      lv_datab = gs_datatab_ISVF-datab.
      lv_datbi = gs_datatab_ISVF-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISVF'.
      ls_komv-kbetr = gs_datatab_ISVF-kbetr.
      ls_komv-kpein = gs_datatab_ISVF-kpein.
      ls_komv-kmein = gs_datatab_ISVF-kmein.
      ls_komv-waers = gs_datatab_ISVF-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISVF-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISVF tab
Endif. "ISVF
**************************************ISVF

******************* ISVG ***************
If rb_ISVG = 'X'.
  IF gt_work_tab_ISVG[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISVG INTO gs_work_tab_ISVG.

      CLEAR: gs_datatab_ISVG.
      MOVE-CORRESPONDING gs_work_tab_ISVG TO gs_datatab_ISVG.
      APPEND gs_datatab_ISVG TO gt_datatab_ISVG.
    ENDLOOP.

    LOOP AT gt_datatab_ISVG INTO gs_datatab_ISVG.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISVG-matnr
*            IMPORTING
*              output = gs_datatab_ISVG-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISVG-kunnr
*            IMPORTING
*              output = gs_datatab_ISVG-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISVG-aland.
      ls_komg-txjcd = gs_datatab_ISVG-txjcd.
      ls_komg-dynkey1 = gs_datatab_ISVG-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISVG-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISVG-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISVG-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISVG-aland.
      ls_komk-txjcd = gs_datatab_ISVG-txjcd.
      Append ls_komk to lt_komk.
*      ls_komp-yyprgrp = gs_datatab_ISVG-yyprgrp.
*     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '601'.
      lv_kschl = 'ISVG'.
      lv_datab = gs_datatab_ISVG-datab.
      lv_datbi = gs_datatab_ISVG-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISVG'.
      ls_komv-kbetr = gs_datatab_ISVG-kbetr.
      ls_komv-kpein = gs_datatab_ISVG-kpein.
      ls_komv-kmein = gs_datatab_ISVG-kmein.
      ls_komv-waers = gs_datatab_ISVG-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISVG-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISVG tab
Endif. "ISVG
**************************************ISVG

******************* ISIC ***************
If rb_ISIC = 'X'.
  IF gt_work_tab_ISIC[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISIC INTO gs_work_tab_ISIC.

      CLEAR: gs_datatab_ISIC.
      MOVE-CORRESPONDING gs_work_tab_ISIC TO gs_datatab_ISIC.
      APPEND gs_datatab_ISIC TO gt_datatab_ISIC.
    ENDLOOP.

    LOOP AT gt_datatab_ISIC INTO gs_datatab_ISIC.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISIC-matnr
*            IMPORTING
*              output = gs_datatab_ISIC-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISIC-kunnr
*            IMPORTING
*              output = gs_datatab_ISIC-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISIC-aland.
      ls_komg-doctyp = gs_datatab_ISIC-doctyp.
      ls_komg-txreg_sf = gs_datatab_ISIC-txreg_sf.
      ls_komg-txreg_st = gs_datatab_ISIC-txreg_st.
      ls_komg-dynkey1 = gs_datatab_ISIC-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISIC-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISIC-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISIC-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISIC-aland.
      ls_komk-doctyp = gs_datatab_ISIC-doctyp.
      Append ls_komk to lt_komk.
      ls_komp-txreg_sf = gs_datatab_ISIC-txreg_sf.
      ls_komp-txreg_st = gs_datatab_ISIC-txreg_st.
     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '382'.
      lv_kschl = 'ISIC'.
      lv_datab = gs_datatab_ISIC-datab.
      lv_datbi = gs_datatab_ISIC-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISIC'.
      ls_komv-kbetr = gs_datatab_ISIC-kbetr.
      ls_komv-kpein = gs_datatab_ISIC-kpein.
      ls_komv-kmein = gs_datatab_ISIC-kmein.
      ls_komv-waers = gs_datatab_ISIC-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISIC-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISIC tab
Endif. "ISIC
**************************************ISIC

******************* IST2 ***************
If rb_IST2 = 'X'.
  IF gt_work_tab_IST2[] IS NOT INITIAL.

    LOOP AT gt_work_tab_IST2 INTO gs_work_tab_IST2.

      CLEAR: gs_datatab_IST2.
      MOVE-CORRESPONDING gs_work_tab_IST2 TO gs_datatab_IST2.
      APPEND gs_datatab_IST2 TO gt_datatab_IST2.
    ENDLOOP.

    LOOP AT gt_datatab_IST2 INTO gs_datatab_IST2.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_IST2-matnr
*            IMPORTING
*              output = gs_datatab_IST2-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_IST2-kunnr
*            IMPORTING
*              output = gs_datatab_IST2-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_IST2-aland.
      ls_komg-txreg_sf = gs_datatab_IST2-txreg_sf.
      ls_komg-txreg_st = gs_datatab_IST2-txreg_st.
      ls_komg-xsubt = gs_datatab_IST2-xsubt.
      ls_komg-dynkey1 = gs_datatab_IST2-dynkey1.
      ls_komg-dynkey2 = gs_datatab_IST2-dynkey2.
      ls_komg-dynkey3 = gs_datatab_IST2-dynkey3.
      ls_komg-taxgroup = gs_datatab_IST2-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_IST2-aland.
      ls_komk-xsubt = gs_datatab_IST2-xsubt.
      Append ls_komk to lt_komk.
      ls_komp-txreg_sf = gs_datatab_IST2-txreg_sf.
      ls_komp-txreg_st = gs_datatab_IST2-txreg_st.
     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '348'.
      lv_kschl = 'IST2'.
      lv_datab = gs_datatab_IST2-datab.
      lv_datbi = gs_datatab_IST2-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'IST2'.
      ls_komv-kbetr = gs_datatab_IST2-kbetr.
      ls_komv-kpein = gs_datatab_IST2-kpein.
      ls_komv-kmein = gs_datatab_IST2-kmein.
      ls_komv-waers = gs_datatab_IST2-konwa.
*      ls_komv-mwsk1 = gs_datatab_IST2-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on IST2 tab
Endif. "IST2
**************************************IST2

******************* ISTB ***************
If rb_ISTB = 'X'.
  IF gt_work_tab_ISTB[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISTB INTO gs_work_tab_ISTB.

      CLEAR: gs_datatab_ISTB.
      MOVE-CORRESPONDING gs_work_tab_ISTB TO gs_datatab_ISTB.
      APPEND gs_datatab_ISTB TO gt_datatab_ISTB.
    ENDLOOP.

    LOOP AT gt_datatab_ISTB INTO gs_datatab_ISTB.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTB-matnr
*            IMPORTING
*              output = gs_datatab_ISTB-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTB-kunnr
*            IMPORTING
*              output = gs_datatab_ISTB-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISTB-aland.
      ls_komg-txreg_sf = gs_datatab_ISTB-txreg_sf.
      ls_komg-txreg_st = gs_datatab_ISTB-txreg_st.
      ls_komg-xsubt = gs_datatab_ISTB-xsubt.
      ls_komg-dynkey1 = gs_datatab_ISTB-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISTB-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISTB-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISTB-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISTB-aland.
      ls_komk-xsubt = gs_datatab_ISTB-xsubt.
      Append ls_komk to lt_komk.
      ls_komp-txreg_sf = gs_datatab_ISTB-txreg_sf.
      ls_komp-txreg_st = gs_datatab_ISTB-txreg_st.
     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '348'.
      lv_kschl = 'ISTB'.
      lv_datab = gs_datatab_ISTB-datab.
      lv_datbi = gs_datatab_ISTB-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISTB'.
      ls_komv-kbetr = gs_datatab_ISTB-kbetr.
      ls_komv-kpein = gs_datatab_ISTB-kpein.
      ls_komv-kmein = gs_datatab_ISTB-kmein.
      ls_komv-waers = gs_datatab_ISTB-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISTB-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISTB tab
Endif. "ISTB
**************************************ISTB

******************* ISTC ***************
If rb_ISTC = 'X'.
  IF gt_work_tab_ISTC[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISTC INTO gs_work_tab_ISTC.

      CLEAR: gs_datatab_ISTC.
      MOVE-CORRESPONDING gs_work_tab_ISTC TO gs_datatab_ISTC.
      APPEND gs_datatab_ISTC TO gt_datatab_ISTC.
    ENDLOOP.

    LOOP AT gt_datatab_ISTC INTO gs_datatab_ISTC.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTC-matnr
*            IMPORTING
*              output = gs_datatab_ISTC-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTC-kunnr
*            IMPORTING
*              output = gs_datatab_ISTC-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISTC-aland.
      ls_komg-txreg_sf = gs_datatab_ISTC-txreg_sf.
      ls_komg-txreg_st = gs_datatab_ISTC-txreg_st.
      ls_komg-xsubt = gs_datatab_ISTC-xsubt.
      ls_komg-dynkey1 = gs_datatab_ISTC-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISTC-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISTC-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISTC-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISTC-aland.
      ls_komk-xsubt = gs_datatab_ISTC-xsubt.
      Append ls_komk to lt_komk.
      ls_komp-txreg_sf = gs_datatab_ISTC-txreg_sf.
      ls_komp-txreg_st = gs_datatab_ISTC-txreg_st.
     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '348'.
      lv_kschl = 'ISTC'.
      lv_datab = gs_datatab_ISTC-datab.
      lv_datbi = gs_datatab_ISTC-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISTC'.
      ls_komv-kbetr = gs_datatab_ISTC-kbetr.
      ls_komv-kpein = gs_datatab_ISTC-kpein.
      ls_komv-kmein = gs_datatab_ISTC-kmein.
      ls_komv-waers = gs_datatab_ISTC-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISTC-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISTC tab
Endif. "ISTC
**************************************ISTC

******************* ISTI ***************
If rb_ISTI = 'X'.
  IF gt_work_tab_ISTI[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISTI INTO gs_work_tab_ISTI.

      CLEAR: gs_datatab_ISTI.
      MOVE-CORRESPONDING gs_work_tab_ISTI TO gs_datatab_ISTI.
      APPEND gs_datatab_ISTI TO gt_datatab_ISTI.
    ENDLOOP.

    LOOP AT gt_datatab_ISTI INTO gs_datatab_ISTI.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTI-matnr
*            IMPORTING
*              output = gs_datatab_ISTI-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTI-kunnr
*            IMPORTING
*              output = gs_datatab_ISTI-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISTI-aland.
      ls_komg-txreg_sf = gs_datatab_ISTI-txreg_sf.
      ls_komg-txreg_st = gs_datatab_ISTI-txreg_st.
      ls_komg-xsubt = gs_datatab_ISTI-xsubt.
      ls_komg-dynkey1 = gs_datatab_ISTI-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISTI-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISTI-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISTI-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISTI-aland.
      ls_komk-xsubt = gs_datatab_ISTI-xsubt.
      Append ls_komk to lt_komk.
      ls_komp-txreg_sf = gs_datatab_ISTI-txreg_sf.
      ls_komp-txreg_st = gs_datatab_ISTI-txreg_st.
     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '348'.
      lv_kschl = 'ISTI'.
      lv_datab = gs_datatab_ISTI-datab.
      lv_datbi = gs_datatab_ISTI-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISTI'.
      ls_komv-kbetr = gs_datatab_ISTI-kbetr.
      ls_komv-kpein = gs_datatab_ISTI-kpein.
      ls_komv-kmein = gs_datatab_ISTI-kmein.
      ls_komv-waers = gs_datatab_ISTI-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISTI-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISTI tab
Endif. "ISTI
**************************************ISTI

******************* ISTN ***************
If rb_ISTN = 'X'.
  IF gt_work_tab_ISTN[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISTN INTO gs_work_tab_ISTN.

      CLEAR: gs_datatab_ISTN.
      MOVE-CORRESPONDING gs_work_tab_ISTN TO gs_datatab_ISTN.
      APPEND gs_datatab_ISTN TO gt_datatab_ISTN.
    ENDLOOP.

    LOOP AT gt_datatab_ISTN INTO gs_datatab_ISTN.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTN-matnr
*            IMPORTING
*              output = gs_datatab_ISTN-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTN-kunnr
*            IMPORTING
*              output = gs_datatab_ISTN-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISTN-aland.
      ls_komg-txreg_sf = gs_datatab_ISTN-txreg_sf.
      ls_komg-txreg_st = gs_datatab_ISTN-txreg_st.
      ls_komg-xsubt = gs_datatab_ISTN-xsubt.
      ls_komg-dynkey1 = gs_datatab_ISTN-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISTN-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISTN-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISTN-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISTN-aland.
      ls_komk-xsubt = gs_datatab_ISTN-xsubt.
      Append ls_komk to lt_komk.
      ls_komp-txreg_sf = gs_datatab_ISTN-txreg_sf.
      ls_komp-txreg_st = gs_datatab_ISTN-txreg_st.
     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '348'.
      lv_kschl = 'ISTN'.
      lv_datab = gs_datatab_ISTN-datab.
      lv_datbi = gs_datatab_ISTN-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISTN'.
      ls_komv-kbetr = gs_datatab_ISTN-kbetr.
      ls_komv-kpein = gs_datatab_ISTN-kpein.
      ls_komv-kmein = gs_datatab_ISTN-kmein.
      ls_komv-waers = gs_datatab_ISTN-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISTN-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISTN tab
Endif. "ISTN
**************************************ISTN

******************* ISTS ***************
If rb_ISTS = 'X'.
  IF gt_work_tab_ISTS[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISTS INTO gs_work_tab_ISTS.

      CLEAR: gs_datatab_ISTS.
      MOVE-CORRESPONDING gs_work_tab_ISTS TO gs_datatab_ISTS.
      APPEND gs_datatab_ISTS TO gt_datatab_ISTS.
    ENDLOOP.

    LOOP AT gt_datatab_ISTS INTO gs_datatab_ISTS.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTS-matnr
*            IMPORTING
*              output = gs_datatab_ISTS-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTS-kunnr
*            IMPORTING
*              output = gs_datatab_ISTS-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISTS-aland.
      ls_komg-txreg_sf = gs_datatab_ISTS-txreg_sf.
      ls_komg-txreg_st = gs_datatab_ISTS-txreg_st.
      ls_komg-xsubt = gs_datatab_ISTS-xsubt.
      ls_komg-dynkey1 = gs_datatab_ISTS-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISTS-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISTS-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISTS-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISTS-aland.
      ls_komk-xsubt = gs_datatab_ISTS-xsubt.
      Append ls_komk to lt_komk.
      ls_komp-txreg_sf = gs_datatab_ISTS-txreg_sf.
      ls_komp-txreg_st = gs_datatab_ISTS-txreg_st.
     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '348'.
      lv_kschl = 'ISTS'.
      lv_datab = gs_datatab_ISTS-datab.
      lv_datbi = gs_datatab_ISTS-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISTS'.
      ls_komv-kbetr = gs_datatab_ISTS-kbetr.
      ls_komv-kpein = gs_datatab_ISTS-kpein.
      ls_komv-kmein = gs_datatab_ISTS-kmein.
      ls_komv-waers = gs_datatab_ISTS-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISTS-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISTS tab
Endif. "ISTS
**************************************ISTS

******************* ISTT ***************
If rb_ISTT = 'X'.
  IF gt_work_tab_ISTT[] IS NOT INITIAL.

    LOOP AT gt_work_tab_ISTT INTO gs_work_tab_ISTT.

      CLEAR: gs_datatab_ISTT.
      MOVE-CORRESPONDING gs_work_tab_ISTT TO gs_datatab_ISTT.
      APPEND gs_datatab_ISTT TO gt_datatab_ISTT.
    ENDLOOP.

    LOOP AT gt_datatab_ISTT INTO gs_datatab_ISTT.
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTT-matnr
*            IMPORTING
*              output = gs_datatab_ISTT-matnr.
*
*          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*            EXPORTING
*              input  = gs_datatab_ISTT-kunnr
*            IMPORTING
*              output = gs_datatab_ISTT-kunnr.

"fill FM parameters
      Clear: ls_komv, ls_komg, ls_komk, ls_komp, ls_pispr.
      Refresh: lt_komv, lt_komg, lt_komk, lt_komp, lt_pispr.
      Clear: lv_datbi, lv_datab, lv_kotabnr, lv_kschl.
"fill komg
      ls_komg-aland = gs_datatab_ISTT-aland.
      ls_komg-txreg_sf = gs_datatab_ISTT-txreg_sf.
      ls_komg-txreg_st = gs_datatab_ISTT-txreg_st.
      ls_komg-xsubt = gs_datatab_ISTT-xsubt.
      ls_komg-dynkey1 = gs_datatab_ISTT-dynkey1.
      ls_komg-dynkey2 = gs_datatab_ISTT-dynkey2.
      ls_komg-dynkey3 = gs_datatab_ISTT-dynkey3.
      ls_komg-taxgroup = gs_datatab_ISTT-taxgroup.
      Append ls_komg to lt_komg.

" fill KOMK KOMP
      ls_komk-aland = gs_datatab_ISTT-aland.
      ls_komk-xsubt = gs_datatab_ISTT-xsubt.
      Append ls_komk to lt_komk.
      ls_komp-txreg_sf = gs_datatab_ISTT-txreg_sf.
      ls_komp-txreg_st = gs_datatab_ISTT-txreg_st.
     Append ls_komp to lt_komp.

" fill komv
      lv_kotabnr = '348'.
      lv_kschl = 'ISTT'.
      lv_datab = gs_datatab_ISTT-datab.
      lv_datbi = gs_datatab_ISTT-datbi.

      ls_komv-kappl = 'V'.
      ls_komv-kschl = 'ISTT'.
      ls_komv-kbetr = gs_datatab_ISTT-kbetr.
      ls_komv-kpein = gs_datatab_ISTT-kpein.
      ls_komv-kmein = gs_datatab_ISTT-kmein.
      ls_komv-waers = gs_datatab_ISTT-konwa.
*      ls_komv-mwsk1 = gs_datatab_ISTT-mwsk1. "MWSK for MWST conditions
      Append ls_komv to lt_komv.

      perform PR_COPY.

"         *************** end fill
      ENDLOOP. "gt_datatab.
  Endif. "check on ISTT tab
Endif. "ISTT
**************************************ISTT

*********** END OF CONDITION RECORD TABLE SPECIFIC CODE ****************

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
*&---------------------------------------------------------------------*
*&      Form  PR_COPY
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM PR_COPY .

CALL FUNCTION 'RV_CONDITION_COPY'
     EXPORTING
          application              = 'V'
          condition_table          = lv_kotabnr
          condition_type           = lv_kschl
          date_from                = lv_datab
          date_to                  = lv_datbi
          enqueue                  = 'X'
          i_komk                   = lt_komk
          i_komp                   = lt_komp
          key_fields               = ls_komg
          maintain_mode            = 'A'
          no_authority_check       = 'X'
          keep_old_records         = 'X'
          overlap_confirmed        = 'X'
     IMPORTING
          e_komk                   = lt_komk
          e_komp                   = lt_komp
          new_record               = lt_newrec
     TABLES
          copy_records             = lt_komv
     EXCEPTIONS
          enqueue_on_record        = 01
          invalid_application      = 02
          invalid_condition_number = 03
          invalid_condition_type   = 04
          no_authority_ekorg       = 05
          no_authority_kschl       = 06
          no_authority_vkorg       = 07
          no_selection             = 08
          table_not_valid          = 09.

If sy-subrc NE 0.
  "error handling.
Endif.

CALL FUNCTION 'RV_CONDITION_SAVE'.
CALL FUNCTION 'RV_CONDITION_RESET'.
Commit work and wait.


ENDFORM.                    " pr copy.
FORM fill_update_struct USING p_f1 TYPE any
p_f2 TYPE any.
  FIELD-SYMBOLS: <fstructx> TYPE any,
                 <fstruct>  TYPE any.

  DO.
    ASSIGN COMPONENT sy-index OF STRUCTURE p_f1 TO <fstruct>.
    IF sy-subrc <> 0. EXIT. ENDIF.
    IF <fstruct> IS NOT INITIAL.
      ASSIGN COMPONENT sy-index OF STRUCTURE p_f2 TO <fstructx>.
      IF sy-subrc = 0.
        <fstructx> = 'X'.
      ENDIF.
    ENDIF.
  ENDDO.
ENDFORM. " fill_update_struct