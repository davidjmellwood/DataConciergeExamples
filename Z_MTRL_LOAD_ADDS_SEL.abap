*&---------------------------------------------------------------------*
*&  Include           Z_CUST_LOAD_SEL
*&---------------------------------------------------------------------*
SELECTION-SCREEN BEGIN OF BLOCK block1 WITH FRAME TITLE text-001.

PARAMETERS: p_file TYPE  rlgrap-filename.

PARAMETERS: rb_makt RADIOBUTTON GROUP rad1 DEFAULT 'X',
            rb_mdma RADIOBUTTON GROUP rad1,
            rb_mard RADIOBUTTON GROUP rad1,
            rb_mbew RADIOBUTTON GROUP rad1,
            rb_mver RADIOBUTTON GROUP rad1,
            rb_mlgn RADIOBUTTON GROUP rad1,
            rb_marm RADIOBUTTON GROUP rad1,
            rb_mltx RADIOBUTTON GROUP rad1,
            rb_mlan RADIOBUTTON GROUP rad1,
            rb_mland RADIOBUTTON GROUP rad1,
            rb_ausp RADIOBUTTON GROUP rad1,
            rb_fore RADIOBUTTON GROUP rad1,
            rb_mapr RADIOBUTTON GROUP rad1,
            rb_prop RADIOBUTTON GROUP rad1,
            rb_qmat RADIOBUTTON GROUP rad1,
            rb_mvke RADIOBUTTON GROUP rad1,
            rb_nmat RADIOBUTTON GROUP rad1,
            rb_marc RADIOBUTTON GROUP rad1.
SELECTION-SCREEN END OF BLOCK block1.