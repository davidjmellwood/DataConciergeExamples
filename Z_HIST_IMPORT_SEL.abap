*&---------------------------------------------------------------------*
*&  Include           Z_CUST_LOAD_SEL
*&---------------------------------------------------------------------*
SELECTION-SCREEN BEGIN OF BLOCK block1 WITH FRAME TITLE text-001.

PARAMETERS: p_file TYPE  rlgrap-filename.

PARAMETERS: rb_acdo RADIOBUTTON GROUP rad1 DEFAULT 'X',
            rb_adrc RADIOBUTTON GROUP rad1,
            rb_afko RADIOBUTTON GROUP rad1,
            rb_afpo RADIOBUTTON GROUP rad1,
            rb_afru RADIOBUTTON GROUP rad1,
            rb_afvc RADIOBUTTON GROUP rad1,
            rb_afvu RADIOBUTTON GROUP rad1,
            rb_afvv RADIOBUTTON GROUP rad1,
            rb_anla RADIOBUTTON GROUP rad1,
            rb_anlb RADIOBUTTON GROUP rad1,
            rb_anlc RADIOBUTTON GROUP rad1,
            rb_anlp RADIOBUTTON GROUP rad1,
            rb_aufk RADIOBUTTON GROUP rad1,
            rb_bkpf RADIOBUTTON GROUP rad1,
            rb_bsadb RADIOBUTTON GROUP rad1,
            rb_bsakb RADIOBUTTON GROUP rad1,
            rb_bseg RADIOBUTTON GROUP rad1,
            rb_coej RADIOBUTTON GROUP rad1,
            rb_cost RADIOBUTTON GROUP rad1,
            rb_crhd RADIOBUTTON GROUP rad1,
            rb_cssl RADIOBUTTON GROUP rad1,
            rb_ddcha RADIOBUTTON GROUP rad1,
            rb_ddnum RADIOBUTTON GROUP rad1,
            rb_ekbe RADIOBUTTON GROUP rad1,
            rb_ekes RADIOBUTTON GROUP rad1,
            rb_eket RADIOBUTTON GROUP rad1,
            rb_ekkn RADIOBUTTON GROUP rad1,
            rb_ekko RADIOBUTTON GROUP rad1,
            rb_ekpa RADIOBUTTON GROUP rad1,
            rb_ekpo RADIOBUTTON GROUP rad1,
            rb_fpla RADIOBUTTON GROUP rad1,
            rb_fplt RADIOBUTTON GROUP rad1,
            rb_ihpa RADIOBUTTON GROUP rad1,
            rb_jest RADIOBUTTON GROUP rad1,
            rb_konv RADIOBUTTON GROUP rad1,
            rb_likp RADIOBUTTON GROUP rad1,
            rb_lips RADIOBUTTON GROUP rad1,
            rb_mkpf RADIOBUTTON GROUP rad1,
            rb_mlst RADIOBUTTON GROUP rad1,
            rb_mseg RADIOBUTTON GROUP rad1,
            rb_prhi RADIOBUTTON GROUP rad1,
            rb_proj RADIOBUTTON GROUP rad1,
            rb_projs RADIOBUTTON GROUP rad1,
            rb_prps RADIOBUTTON GROUP rad1,
            rb_prpss RADIOBUTTON GROUP rad1,
            rb_qmel RADIOBUTTON GROUP rad1,
            rb_qmfe RADIOBUTTON GROUP rad1,
            rb_qmsm RADIOBUTTON GROUP rad1,
            rb_resb RADIOBUTTON GROUP rad1,
            rb_stxh RADIOBUTTON GROUP rad1,
            rb_stxl RADIOBUTTON GROUP rad1,
            rb_vbak RADIOBUTTON GROUP rad1,
            rb_vbap RADIOBUTTON GROUP rad1,
            rb_vbep RADIOBUTTON GROUP rad1,
            rb_vbfa RADIOBUTTON GROUP rad1,
            rb_vbkd RADIOBUTTON GROUP rad1,
            rb_vbpa RADIOBUTTON GROUP rad1,
            rb_vbrk RADIOBUTTON GROUP rad1,
            rb_vbrp RADIOBUTTON GROUP rad1,
            rb_vbuk RADIOBUTTON GROUP rad1,
            rb_vbup RADIOBUTTON GROUP rad1.

SELECTION-SCREEN END OF BLOCK block1.