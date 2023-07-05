*&---------------------------------------------------------------------*
*&  Include           Z_CSD_PRICE_LOADS_TOP
*&---------------------------------------------------------------------*


"yglp
TYPES: BEGIN OF ty_upload_yglp,
    MATNR type A950-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A950-DATAB,
    DATBI type A950-DATBI,
  END OF ty_upload_yglp.

TYPES: BEGIN OF ty_converted_yglp,
    MATNR type A950-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A950-DATAB,
    DATBI type A950-DATBI,
  END OF ty_converted_yglp.

DATA: gt_datatab_yglp  TYPE TABLE OF ty_converted_yglp,
      gs_datatab_yglp  LIKE LINE OF  gt_datatab_yglp,
      gt_work_tab_yglp TYPE TABLE OF ty_upload_yglp,
      gs_work_tab_yglp LIKE LINE OF  gt_work_tab_yglp,
      lv_matnr like mara-matnr.

"end yglp
**********************************************

"ycsp4
TYPES: BEGIN OF ty_upload_ycsp4,
    VKORG type A921-VKORG,
    PRODH type A921-PRODH,
    YYPRGRP type A921-YYPRGRP,
    KONDA type A921-KONDA,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A921-DATAB,
    DATBI type A921-DATBI,
  END OF ty_upload_ycsp4.

TYPES: BEGIN OF ty_converted_ycsp4,
    VKORG type A921-VKORG,
    PRODH type A921-PRODH,
    YYPRGRP type A921-YYPRGRP,
    KONDA type A921-KONDA,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A921-DATAB,
    DATBI type A921-DATBI,
  END OF ty_converted_ycsp4.

DATA: gt_datatab_ycsp4  TYPE TABLE OF ty_converted_ycsp4,
      gs_datatab_ycsp4  LIKE LINE OF  gt_datatab_ycsp4,
      gt_work_tab_ycsp4 TYPE TABLE OF ty_upload_ycsp4,
      gs_work_tab_ycsp4 LIKE LINE OF  gt_work_tab_ycsp4.

"end ycsp4
**********************************************

"ymaa2
TYPES: BEGIN OF ty_upload_ymaa2,
    LAND1 type A952-LAND1,
    PRODH type A952-PRODH,
    YYPRGRP type A952-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A952-DATAB,
    DATBI type A952-DATBI,
  END OF ty_upload_ymaa2.

TYPES: BEGIN OF ty_converted_ymaa2,
    LAND1 type A952-LAND1,
    PRODH type A952-PRODH,
    YYPRGRP type A952-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A952-DATAB,
    DATBI type A952-DATBI,
  END OF ty_converted_ymaa2.

DATA: gt_datatab_ymaa2  TYPE TABLE OF ty_converted_ymaa2,
      gs_datatab_ymaa2  LIKE LINE OF  gt_datatab_ymaa2,
      gt_work_tab_ymaa2 TYPE TABLE OF ty_upload_ymaa2,
      gs_work_tab_ymaa2 LIKE LINE OF  gt_work_tab_ymaa2.

"end ymaa2
**********************************************

"ymaa3
TYPES: BEGIN OF ty_upload_ymaa3,
    LAND1 type A953-LAND1,
    EXTWG type A953-EXTWG,
    YYPRGRP type A953-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A953-DATAB,
    DATBI type A953-DATBI,
  END OF ty_upload_ymaa3.

TYPES: BEGIN OF ty_converted_ymaa3,
    LAND1 type A953-LAND1,
    EXTWG type A953-EXTWG,
    YYPRGRP type A953-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A953-DATAB,
    DATBI type A953-DATBI,
  END OF ty_converted_ymaa3.

DATA: gt_datatab_ymaa3  TYPE TABLE OF ty_converted_ymaa3,
      gs_datatab_ymaa3  LIKE LINE OF  gt_datatab_ymaa3,
      gt_work_tab_ymaa3 TYPE TABLE OF ty_upload_ymaa3,
      gs_work_tab_ymaa3 LIKE LINE OF  gt_work_tab_ymaa3.

"end ymaa3
**********************************************

"ymaa4
TYPES: BEGIN OF ty_upload_ymaa4,
    LAND1 type A954-LAND1,
    YYPRGRP type A954-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A954-DATAB,
    DATBI type A954-DATBI,
  END OF ty_upload_ymaa4.

TYPES: BEGIN OF ty_converted_ymaa4,
    LAND1 type A954-LAND1,
    YYPRGRP type A954-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A954-DATAB,
    DATBI type A954-DATBI,
  END OF ty_converted_ymaa4.

DATA: gt_datatab_ymaa4  TYPE TABLE OF ty_converted_ymaa4,
      gs_datatab_ymaa4  LIKE LINE OF  gt_datatab_ymaa4,
      gt_work_tab_ymaa4 TYPE TABLE OF ty_upload_ymaa4,
      gs_work_tab_ymaa4 LIKE LINE OF  gt_work_tab_ymaa4.

"end ymaa4
**********************************************

"ymaa5
TYPES: BEGIN OF ty_upload_ymaa5,
    LAND1 type A955-LAND1,
    EXTWG type A955-EXTWG,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A955-DATAB,
    DATBI type A955-DATBI,
  END OF ty_upload_ymaa5.

TYPES: BEGIN OF ty_converted_ymaa5,
    LAND1 type A955-LAND1,
    EXTWG type A955-EXTWG,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A955-DATAB,
    DATBI type A955-DATBI,
  END OF ty_converted_ymaa5.

DATA: gt_datatab_ymaa5  TYPE TABLE OF ty_converted_ymaa5,
      gs_datatab_ymaa5  LIKE LINE OF  gt_datatab_ymaa5,
      gt_work_tab_ymaa5 TYPE TABLE OF ty_upload_ymaa5,
      gs_work_tab_ymaa5 LIKE LINE OF  gt_work_tab_ymaa5.

"end ymaa5
**********************************************

"ymaa7
TYPES: BEGIN OF ty_upload_ymaa7,
    VKORG type A957-VKORG,
    PRODH type A957-PRODH,
    YYPRGRP type A957-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A957-DATAB,
    DATBI type A957-DATBI,
  END OF ty_upload_ymaa7.

TYPES: BEGIN OF ty_converted_ymaa7,
    VKORG type A957-VKORG,
    PRODH type A957-PRODH,
    YYPRGRP type A957-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A957-DATAB,
    DATBI type A957-DATBI,
  END OF ty_converted_ymaa7.

DATA: gt_datatab_ymaa7  TYPE TABLE OF ty_converted_ymaa7,
      gs_datatab_ymaa7  LIKE LINE OF  gt_datatab_ymaa7,
      gt_work_tab_ymaa7 TYPE TABLE OF ty_upload_ymaa7,
      gs_work_tab_ymaa7 LIKE LINE OF  gt_work_tab_ymaa7.

"end ymaa7
**********************************************

"ymaa8
TYPES: BEGIN OF ty_upload_ymaa8,
    VKORG type A958-VKORG,
    EXTWG type A958-EXTWG,
    YYPRGRP type A958-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A958-DATAB,
    DATBI type A958-DATBI,
  END OF ty_upload_ymaa8.

TYPES: BEGIN OF ty_converted_ymaa8,
    VKORG type A958-VKORG,
    EXTWG type A958-EXTWG,
    YYPRGRP type A958-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A958-DATAB,
    DATBI type A958-DATBI,
  END OF ty_converted_ymaa8.

DATA: gt_datatab_ymaa8  TYPE TABLE OF ty_converted_ymaa8,
      gs_datatab_ymaa8  LIKE LINE OF  gt_datatab_ymaa8,
      gt_work_tab_ymaa8 TYPE TABLE OF ty_upload_ymaa8,
      gs_work_tab_ymaa8 LIKE LINE OF  gt_work_tab_ymaa8.

"end ymaa8
**********************************************

"ymaa9
TYPES: BEGIN OF ty_upload_ymaa9,
    VKORG type A960-VKORG,
    YYPRGRP type A960-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A960-DATAB,
    DATBI type A960-DATBI,
  END OF ty_upload_ymaa9.

TYPES: BEGIN OF ty_converted_ymaa9,
    VKORG type A960-VKORG,
    YYPRGRP type A960-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A960-DATAB,
    DATBI type A960-DATBI,
  END OF ty_converted_ymaa9.

DATA: gt_datatab_ymaa9  TYPE TABLE OF ty_converted_ymaa9,
      gs_datatab_ymaa9  LIKE LINE OF  gt_datatab_ymaa9,
      gt_work_tab_ymaa9 TYPE TABLE OF ty_upload_ymaa9,
      gs_work_tab_ymaa9 LIKE LINE OF  gt_work_tab_ymaa9.

"end ymaa9
**********************************************

"ymaaa
TYPES: BEGIN OF ty_upload_ymaaa,
    VKORG type A959-VKORG,
    EXTWG type A959-EXTWG,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A959-DATAB,
    DATBI type A959-DATBI,
  END OF ty_upload_ymaaa.

TYPES: BEGIN OF ty_converted_ymaaa,
    VKORG type A959-VKORG,
    EXTWG type A959-EXTWG,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A959-DATAB,
    DATBI type A959-DATBI,
  END OF ty_converted_ymaaa.

DATA: gt_datatab_ymaaa  TYPE TABLE OF ty_converted_ymaaa,
      gs_datatab_ymaaa  LIKE LINE OF  gt_datatab_ymaaa,
      gt_work_tab_ymaaa TYPE TABLE OF ty_upload_ymaaa,
      gs_work_tab_ymaaa LIKE LINE OF  gt_work_tab_ymaaa.

"end ymaaa
**********************************************

"ymex3
TYPES: BEGIN OF ty_upload_ymex3,
    LLAND type A150-LLAND,
    MATNR type A150-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A150-DATAB,
    DATBI type A150-DATBI,
  END OF ty_upload_ymex3.

TYPES: BEGIN OF ty_converted_ymex3,
    LLAND type A150-LLAND,
    MATNR type A150-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A150-DATAB,
    DATBI type A150-DATBI,
  END OF ty_converted_ymex3.

DATA: gt_datatab_ymex3  TYPE TABLE OF ty_converted_ymex3,
      gs_datatab_ymex3  LIKE LINE OF  gt_datatab_ymex3,
      gt_work_tab_ymex3 TYPE TABLE OF ty_upload_ymex3,
      gs_work_tab_ymex3 LIKE LINE OF  gt_work_tab_ymex3.

"end ymex3
**********************************************

"ypr14
TYPES: BEGIN OF ty_upload_ypr14,
    VKORG type A004-VKORG,
    VTWEG type A004-VTWEG,
    MATNR type A004-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A004-DATAB,
    DATBI type A004-DATBI,
  END OF ty_upload_ypr14.

TYPES: BEGIN OF ty_converted_ypr14,
    VKORG type A004-VKORG,
    VTWEG type A004-VTWEG,
    MATNR type A004-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A004-DATAB,
    DATBI type A004-DATBI,
  END OF ty_converted_ypr14.

DATA: gt_datatab_ypr14  TYPE TABLE OF ty_converted_ypr14,
      gs_datatab_ypr14  LIKE LINE OF  gt_datatab_ypr14,
      gt_work_tab_ypr14 TYPE TABLE OF ty_upload_ypr14,
      gs_work_tab_ypr14 LIKE LINE OF  gt_work_tab_ypr14.

"end ypr14
**********************************************

"ypr25
TYPES: BEGIN OF ty_upload_ypr25,
    VKORG type A305-VKORG,
    VTWEG type A305-VTWEG,
    KUNNR type A305-KUNNR,
    MATNR type A305-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A305-DATAB,
    DATBI type A305-DATBI,
  END OF ty_upload_ypr25.

TYPES: BEGIN OF ty_converted_ypr25,
    VKORG type A305-VKORG,
    VTWEG type A305-VTWEG,
    KUNNR type A305-KUNNR,
    MATNR type A305-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A305-DATAB,
    DATBI type A305-DATBI,
  END OF ty_converted_ypr25.

DATA: gt_datatab_ypr25  TYPE TABLE OF ty_converted_ypr25,
      gs_datatab_ypr25  LIKE LINE OF  gt_datatab_ypr25,
      gt_work_tab_ypr25 TYPE TABLE OF ty_upload_ypr25,
      gs_work_tab_ypr25 LIKE LINE OF  gt_work_tab_ypr25.

"end ypr25
**********************************************

"ypr27
TYPES: BEGIN OF ty_upload_ypr27,
    VKORG type A976-VKORG,
    VTWEG type A976-VTWEG,
    KONDA type A976-KONDA,
    MATNR type A976-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A976-DATAB,
    DATBI type A976-DATBI,
  END OF ty_upload_ypr27.

TYPES: BEGIN OF ty_converted_ypr27,
    VKORG type A976-VKORG,
    VTWEG type A976-VTWEG,
    KONDA type A976-KONDA,
    MATNR type A976-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A976-DATAB,
    DATBI type A976-DATBI,
  END OF ty_converted_ypr27.

DATA: gt_datatab_ypr27  TYPE TABLE OF ty_converted_ypr27,
      gs_datatab_ypr27  LIKE LINE OF  gt_datatab_ypr27,
      gt_work_tab_ypr27 TYPE TABLE OF ty_upload_ypr27,
      gs_work_tab_ypr27 LIKE LINE OF  gt_work_tab_ypr27.

"end ypr27
**********************************************

"mwst1
TYPES: BEGIN OF ty_upload_mwst1,
    ALAND type A931-ALAND,
    FKART type A931-FKART,
    LLAND type A931-LLAND,
    TAXK1 type A931-TAXK1,
    TAXM1 type A931-TAXM1,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A931-DATAB,
    DATBI type A931-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_upload_mwst1.

TYPES: BEGIN OF ty_converted_mwst1,
    ALAND type A931-ALAND,
    FKART type A931-FKART,
    LLAND type A931-LLAND,
    TAXK1 type A931-TAXK1,
    TAXM1 type A931-TAXM1,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A931-DATAB,
    DATBI type A931-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_converted_mwst1.

DATA: gt_datatab_mwst1  TYPE TABLE OF ty_converted_mwst1,
      gs_datatab_mwst1  LIKE LINE OF  gt_datatab_mwst1,
      gt_work_tab_mwst1 TYPE TABLE OF ty_upload_mwst1,
      gs_work_tab_mwst1 LIKE LINE OF  gt_work_tab_mwst1.

"end mwst1
**********************************************

"mwst2
TYPES: BEGIN OF ty_upload_mwst2,
    ALAND type A011-ALAND,
    LLAND type A011-LLAND,
    TAXK1 type A011-TAXK1,
    TAXM1 type A011-TAXM1,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A011-DATAB,
    DATBI type A011-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_upload_mwst2.

TYPES: BEGIN OF ty_converted_mwst2,
    ALAND type A011-ALAND,
    LLAND type A011-LLAND,
    TAXK1 type A011-TAXK1,
    TAXM1 type A011-TAXM1,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A011-DATAB,
    DATBI type A011-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_converted_mwst2.

DATA: gt_datatab_mwst2  TYPE TABLE OF ty_converted_mwst2,
      gs_datatab_mwst2  LIKE LINE OF  gt_datatab_mwst2,
      gt_work_tab_mwst2 TYPE TABLE OF ty_upload_mwst2,
      gs_work_tab_mwst2 LIKE LINE OF  gt_work_tab_mwst2.

"end mwst2
**********************************************

"mwst10
TYPES: BEGIN OF ty_upload_mwst10,
    ALAND type A002-ALAND,
    TAXK1 type A002-TAXK1,
    TAXM1 type A002-TAXM1,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A002-DATAB,
    DATBI type A002-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_upload_mwst10.

TYPES: BEGIN OF ty_converted_mwst10,
    ALAND type A002-ALAND,
    TAXK1 type A002-TAXK1,
    TAXM1 type A002-TAXM1,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A002-DATAB,
    DATBI type A002-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_converted_mwst10.

DATA: gt_datatab_mwst10  TYPE TABLE OF ty_converted_mwst10,
      gs_datatab_mwst10  LIKE LINE OF  gt_datatab_mwst10,
      gt_work_tab_mwst10 TYPE TABLE OF ty_upload_mwst10,
      gs_work_tab_mwst10 LIKE LINE OF  gt_work_tab_mwst10.

"end mwst10
**********************************************

"mwst11
TYPES: BEGIN OF ty_upload_mwst11,
    ALAND type A612-ALAND,
    LLAND type A612-LLAND,
    TAXK1 type A612-TAXK1,
    TAXM1 type A612-TAXM1,
    REGIO type A612-REGIO,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A612-DATAB,
    DATBI type A612-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_upload_mwst11.

TYPES: BEGIN OF ty_converted_mwst11,
    ALAND type A612-ALAND,
    LLAND type A612-LLAND,
    TAXK1 type A612-TAXK1,
    TAXM1 type A612-TAXM1,
    REGIO type A612-REGIO,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A612-DATAB,
    DATBI type A612-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_converted_mwst11.

DATA: gt_datatab_mwst11  TYPE TABLE OF ty_converted_mwst11,
      gs_datatab_mwst11  LIKE LINE OF  gt_datatab_mwst11,
      gt_work_tab_mwst11 TYPE TABLE OF ty_upload_mwst11,
      gs_work_tab_mwst11 LIKE LINE OF  gt_work_tab_mwst11.

"end mwst11
**********************************************

"ipva2
TYPES: BEGIN OF ty_upload_ipva2,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_upload_ipva2.

TYPES: BEGIN OF ty_converted_ipva2,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_converted_ipva2.

DATA: gt_datatab_ipva2  TYPE TABLE OF ty_converted_ipva2,
      gs_datatab_ipva2  LIKE LINE OF  gt_datatab_ipva2,
      gt_work_tab_ipva2 TYPE TABLE OF ty_upload_ipva2,
      gs_work_tab_ipva2 LIKE LINE OF  gt_work_tab_ipva2.

"end ipva2
**********************************************

"ipbs2
TYPES: BEGIN OF ty_upload_ipbs2,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_upload_ipbs2.

TYPES: BEGIN OF ty_converted_ipbs2,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_converted_ipbs2.

DATA: gt_datatab_ipbs2  TYPE TABLE OF ty_converted_ipbs2,
      gs_datatab_ipbs2  LIKE LINE OF  gt_datatab_ipbs2,
      gt_work_tab_ipbs2 TYPE TABLE OF ty_upload_ipbs2,
      gs_work_tab_ipbs2 LIKE LINE OF  gt_work_tab_ipbs2.

"end ipbs2
**********************************************

"iplw2
TYPES: BEGIN OF ty_upload_iplw2,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_upload_iplw2.

TYPES: BEGIN OF ty_converted_iplw2,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_converted_iplw2.

DATA: gt_datatab_iplw2  TYPE TABLE OF ty_converted_iplw2,
      gs_datatab_iplw2  LIKE LINE OF  gt_datatab_iplw2,
      gt_work_tab_iplw2 TYPE TABLE OF ty_upload_iplw2,
      gs_work_tab_iplw2 LIKE LINE OF  gt_work_tab_iplw2.

"end iplw2
**********************************************

"icbs2
TYPES: BEGIN OF ty_upload_icbs2,
    ALAND type A382-ALAND,
    DOCTYP type A382-DOCTYP,
    TXREG_SF type A382-TXREG_SF,
    TXREG_ST type A382-TXREG_ST,
    DYNKEY1 type A382-DYNKEY1,
    DYNKEY2 type A382-DYNKEY2,
    DYNKEY3 type A382-DYNKEY3,
    TAXGROUP type A382-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A382-DATAB,
    DATBI type A382-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_upload_icbs2.

TYPES: BEGIN OF ty_converted_icbs2,
    ALAND type A382-ALAND,
    DOCTYP type A382-DOCTYP,
    TXREG_SF type A382-TXREG_SF,
    TXREG_ST type A382-TXREG_ST,
    DYNKEY1 type A382-DYNKEY1,
    DYNKEY2 type A382-DYNKEY2,
    DYNKEY3 type A382-DYNKEY3,
    TAXGROUP type A382-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A382-DATAB,
    DATBI type A382-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_converted_icbs2.

DATA: gt_datatab_icbs2  TYPE TABLE OF ty_converted_icbs2,
      gs_datatab_icbs2  LIKE LINE OF  gt_datatab_icbs2,
      gt_work_tab_icbs2 TYPE TABLE OF ty_upload_icbs2,
      gs_work_tab_icbs2 LIKE LINE OF  gt_work_tab_icbs2.

"end icbs2
**********************************************

"icva1
TYPES: BEGIN OF ty_upload_icva1,
    ALAND type A382-ALAND,
    DOCTYP type A382-DOCTYP,
    TXREG_SF type A382-TXREG_SF,
    TXREG_ST type A382-TXREG_ST,
    DYNKEY1 type A382-DYNKEY1,
    DYNKEY2 type A382-DYNKEY2,
    DYNKEY3 type A382-DYNKEY3,
    TAXGROUP type A382-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A382-DATAB,
    DATBI type A382-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_upload_icva1.

TYPES: BEGIN OF ty_converted_icva1,
    ALAND type A382-ALAND,
    DOCTYP type A382-DOCTYP,
    TXREG_SF type A382-TXREG_SF,
    TXREG_ST type A382-TXREG_ST,
    DYNKEY1 type A382-DYNKEY1,
    DYNKEY2 type A382-DYNKEY2,
    DYNKEY3 type A382-DYNKEY3,
    TAXGROUP type A382-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A382-DATAB,
    DATBI type A382-DATBI,
    MWSK1 type KONP-MWSK1,
  END OF ty_converted_icva1.

DATA: gt_datatab_icva1  TYPE TABLE OF ty_converted_icva1,
      gs_datatab_icva1  LIKE LINE OF  gt_datatab_icva1,
      gt_work_tab_icva1 TYPE TABLE OF ty_upload_icva1,
      gs_work_tab_icva1 LIKE LINE OF  gt_work_tab_icva1.

"end icva1
**********************************************

"ypr11
TYPES: BEGIN OF ty_upload_ypr11,
    LAND1 type A572-LAND1,
    MATNR type A572-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A572-DATAB,
    DATBI type A572-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_ypr11.

TYPES: BEGIN OF ty_converted_ypr11,
    LAND1 type A572-LAND1,
    MATNR type A572-MATNR,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A572-DATAB,
    DATBI type A572-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_ypr11.

DATA: gt_datatab_ypr11  TYPE TABLE OF ty_converted_ypr11,
      gs_datatab_ypr11  LIKE LINE OF  gt_datatab_ypr11,
      gt_work_tab_ypr11 TYPE TABLE OF ty_upload_ypr11,
      gs_work_tab_ypr11 LIKE LINE OF  gt_work_tab_ypr11.

"end ypr11
**********************************************

"yk7114
TYPES: BEGIN OF ty_upload_yk7114,
    VKORG type A912-VKORG,
    KONDA type A912-KONDA,
    YYPRGRP type A912-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A912-DATAB,
    DATBI type A912-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_yk7114.

TYPES: BEGIN OF ty_converted_yk7114,
    VKORG type A912-VKORG,
    KONDA type A912-KONDA,
    YYPRGRP type A912-YYPRGRP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A912-DATAB,
    DATBI type A912-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_yk7114.

DATA: gt_datatab_yk7114  TYPE TABLE OF ty_converted_yk7114,
      gs_datatab_yk7114  LIKE LINE OF  gt_datatab_yk7114,
      gt_work_tab_yk7114 TYPE TABLE OF ty_upload_yk7114,
      gs_work_tab_yk7114 LIKE LINE OF  gt_work_tab_yk7114.

"end yk7114
**********************************************

"bw01
TYPES: BEGIN OF ty_upload_bw01,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw01.

TYPES: BEGIN OF ty_converted_bw01,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw01.

DATA: gt_datatab_bw01  TYPE TABLE OF ty_converted_bw01,
      gs_datatab_bw01  LIKE LINE OF  gt_datatab_bw01,
      gt_work_tab_bw01 TYPE TABLE OF ty_upload_bw01,
      gs_work_tab_bw01 LIKE LINE OF  gt_work_tab_bw01.

"end bw01
**********************************************

"bw02
TYPES: BEGIN OF ty_upload_bw02,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw02.

TYPES: BEGIN OF ty_converted_bw02,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw02.

DATA: gt_datatab_bw02  TYPE TABLE OF ty_converted_bw02,
      gs_datatab_bw02  LIKE LINE OF  gt_datatab_bw02,
      gt_work_tab_bw02 TYPE TABLE OF ty_upload_bw02,
      gs_work_tab_bw02 LIKE LINE OF  gt_work_tab_bw02.

"end bw02
**********************************************

"bw11
TYPES: BEGIN OF ty_upload_bw11,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw11.

TYPES: BEGIN OF ty_converted_bw11,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw11.

DATA: gt_datatab_bw11  TYPE TABLE OF ty_converted_bw11,
      gs_datatab_bw11  LIKE LINE OF  gt_datatab_bw11,
      gt_work_tab_bw11 TYPE TABLE OF ty_upload_bw11,
      gs_work_tab_bw11 LIKE LINE OF  gt_work_tab_bw11.

"end bw11
**********************************************

"bw12
TYPES: BEGIN OF ty_upload_bw12,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw12.

TYPES: BEGIN OF ty_converted_bw12,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw12.

DATA: gt_datatab_bw12  TYPE TABLE OF ty_converted_bw12,
      gs_datatab_bw12  LIKE LINE OF  gt_datatab_bw12,
      gt_work_tab_bw12 TYPE TABLE OF ty_upload_bw12,
      gs_work_tab_bw12 LIKE LINE OF  gt_work_tab_bw12.

"end bw12
**********************************************

"bw21
TYPES: BEGIN OF ty_upload_bw21,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw21.

TYPES: BEGIN OF ty_converted_bw21,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw21.

DATA: gt_datatab_bw21  TYPE TABLE OF ty_converted_bw21,
      gs_datatab_bw21  LIKE LINE OF  gt_datatab_bw21,
      gt_work_tab_bw21 TYPE TABLE OF ty_upload_bw21,
      gs_work_tab_bw21 LIKE LINE OF  gt_work_tab_bw21.

"end bw21
**********************************************

"bw22
TYPES: BEGIN OF ty_upload_bw22,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw22.

TYPES: BEGIN OF ty_converted_bw22,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw22.

DATA: gt_datatab_bw22  TYPE TABLE OF ty_converted_bw22,
      gs_datatab_bw22  LIKE LINE OF  gt_datatab_bw22,
      gt_work_tab_bw22 TYPE TABLE OF ty_upload_bw22,
      gs_work_tab_bw22 LIKE LINE OF  gt_work_tab_bw22.

"end bw22
**********************************************

"bw31
TYPES: BEGIN OF ty_upload_bw31,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw31.

TYPES: BEGIN OF ty_converted_bw31,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw31.

DATA: gt_datatab_bw31  TYPE TABLE OF ty_converted_bw31,
      gs_datatab_bw31  LIKE LINE OF  gt_datatab_bw31,
      gt_work_tab_bw31 TYPE TABLE OF ty_upload_bw31,
      gs_work_tab_bw31 LIKE LINE OF  gt_work_tab_bw31.

"end bw31
**********************************************

"bw32
TYPES: BEGIN OF ty_upload_bw32,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw32.

TYPES: BEGIN OF ty_converted_bw32,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw32.

DATA: gt_datatab_bw32  TYPE TABLE OF ty_converted_bw32,
      gs_datatab_bw32  LIKE LINE OF  gt_datatab_bw32,
      gt_work_tab_bw32 TYPE TABLE OF ty_upload_bw32,
      gs_work_tab_bw32 LIKE LINE OF  gt_work_tab_bw32.

"end bw32
**********************************************

"bw41
TYPES: BEGIN OF ty_upload_bw41,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw41.

TYPES: BEGIN OF ty_converted_bw41,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw41.

DATA: gt_datatab_bw41  TYPE TABLE OF ty_converted_bw41,
      gs_datatab_bw41  LIKE LINE OF  gt_datatab_bw41,
      gt_work_tab_bw41 TYPE TABLE OF ty_upload_bw41,
      gs_work_tab_bw41 LIKE LINE OF  gt_work_tab_bw41.

"end bw41
**********************************************

"bw42
TYPES: BEGIN OF ty_upload_bw42,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw42.

TYPES: BEGIN OF ty_converted_bw42,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw42.

DATA: gt_datatab_bw42  TYPE TABLE OF ty_converted_bw42,
      gs_datatab_bw42  LIKE LINE OF  gt_datatab_bw42,
      gt_work_tab_bw42 TYPE TABLE OF ty_upload_bw42,
      gs_work_tab_bw42 LIKE LINE OF  gt_work_tab_bw42.

"end bw42
**********************************************

"bw51
TYPES: BEGIN OF ty_upload_bw51,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_bw51.

TYPES: BEGIN OF ty_converted_bw51,
    ALAND type A346-ALAND,
    DYNKEY1 type A346-DYNKEY1,
    DYNKEY2 type A346-DYNKEY2,
    DYNKEY3 type A346-DYNKEY3,
    TAXGROUP type A346-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A346-DATAB,
    DATBI type A346-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_bw51.

DATA: gt_datatab_bw51  TYPE TABLE OF ty_converted_bw51,
      gs_datatab_bw51  LIKE LINE OF  gt_datatab_bw51,
      gt_work_tab_bw51 TYPE TABLE OF ty_upload_bw51,
      gs_work_tab_bw51 LIKE LINE OF  gt_work_tab_bw51.

"end bw51
**********************************************

"isvb
TYPES: BEGIN OF ty_upload_isvb,
    ALAND type A601-ALAND,
    TXJCD type A601-TXJCD,
    DYNKEY1 type A601-DYNKEY1,
    DYNKEY2 type A601-DYNKEY2,
    DYNKEY3 type A601-DYNKEY3,
    TAXGROUP type A601-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A601-DATAB,
    DATBI type A601-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_isvb.

TYPES: BEGIN OF ty_converted_isvb,
    ALAND type A601-ALAND,
    TXJCD type A601-TXJCD,
    DYNKEY1 type A601-DYNKEY1,
    DYNKEY2 type A601-DYNKEY2,
    DYNKEY3 type A601-DYNKEY3,
    TAXGROUP type A601-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A601-DATAB,
    DATBI type A601-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_isvb.

DATA: gt_datatab_isvb  TYPE TABLE OF ty_converted_isvb,
      gs_datatab_isvb  LIKE LINE OF  gt_datatab_isvb,
      gt_work_tab_isvb TYPE TABLE OF ty_upload_isvb,
      gs_work_tab_isvb LIKE LINE OF  gt_work_tab_isvb.

"end isvb
**********************************************

"isvc
TYPES: BEGIN OF ty_upload_isvc,
    ALAND type A601-ALAND,
    TXJCD type A601-TXJCD,
    DYNKEY1 type A601-DYNKEY1,
    DYNKEY2 type A601-DYNKEY2,
    DYNKEY3 type A601-DYNKEY3,
    TAXGROUP type A601-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A601-DATAB,
    DATBI type A601-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_isvc.

TYPES: BEGIN OF ty_converted_isvc,
    ALAND type A601-ALAND,
    TXJCD type A601-TXJCD,
    DYNKEY1 type A601-DYNKEY1,
    DYNKEY2 type A601-DYNKEY2,
    DYNKEY3 type A601-DYNKEY3,
    TAXGROUP type A601-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A601-DATAB,
    DATBI type A601-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_isvc.

DATA: gt_datatab_isvc  TYPE TABLE OF ty_converted_isvc,
      gs_datatab_isvc  LIKE LINE OF  gt_datatab_isvc,
      gt_work_tab_isvc TYPE TABLE OF ty_upload_isvc,
      gs_work_tab_isvc LIKE LINE OF  gt_work_tab_isvc.

"end isvc
**********************************************

"isvd
TYPES: BEGIN OF ty_upload_isvd,
    ALAND type A601-ALAND,
    TXJCD type A601-TXJCD,
    DYNKEY1 type A601-DYNKEY1,
    DYNKEY2 type A601-DYNKEY2,
    DYNKEY3 type A601-DYNKEY3,
    TAXGROUP type A601-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A601-DATAB,
    DATBI type A601-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_isvd.

TYPES: BEGIN OF ty_converted_isvd,
    ALAND type A601-ALAND,
    TXJCD type A601-TXJCD,
    DYNKEY1 type A601-DYNKEY1,
    DYNKEY2 type A601-DYNKEY2,
    DYNKEY3 type A601-DYNKEY3,
    TAXGROUP type A601-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A601-DATAB,
    DATBI type A601-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_isvd.

DATA: gt_datatab_isvd  TYPE TABLE OF ty_converted_isvd,
      gs_datatab_isvd  LIKE LINE OF  gt_datatab_isvd,
      gt_work_tab_isvd TYPE TABLE OF ty_upload_isvd,
      gs_work_tab_isvd LIKE LINE OF  gt_work_tab_isvd.

"end isvd
**********************************************

"isvf
TYPES: BEGIN OF ty_upload_isvf,
    ALAND type A601-ALAND,
    TXJCD type A601-TXJCD,
    DYNKEY1 type A601-DYNKEY1,
    DYNKEY2 type A601-DYNKEY2,
    DYNKEY3 type A601-DYNKEY3,
    TAXGROUP type A601-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A601-DATAB,
    DATBI type A601-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_isvf.

TYPES: BEGIN OF ty_converted_isvf,
    ALAND type A601-ALAND,
    TXJCD type A601-TXJCD,
    DYNKEY1 type A601-DYNKEY1,
    DYNKEY2 type A601-DYNKEY2,
    DYNKEY3 type A601-DYNKEY3,
    TAXGROUP type A601-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A601-DATAB,
    DATBI type A601-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_isvf.

DATA: gt_datatab_isvf  TYPE TABLE OF ty_converted_isvf,
      gs_datatab_isvf  LIKE LINE OF  gt_datatab_isvf,
      gt_work_tab_isvf TYPE TABLE OF ty_upload_isvf,
      gs_work_tab_isvf LIKE LINE OF  gt_work_tab_isvf.

"end isvf
**********************************************

"isvg
TYPES: BEGIN OF ty_upload_isvg,
    ALAND type A601-ALAND,
    TXJCD type A601-TXJCD,
    DYNKEY1 type A601-DYNKEY1,
    DYNKEY2 type A601-DYNKEY2,
    DYNKEY3 type A601-DYNKEY3,
    TAXGROUP type A601-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A601-DATAB,
    DATBI type A601-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_isvg.

TYPES: BEGIN OF ty_converted_isvg,
    ALAND type A601-ALAND,
    TXJCD type A601-TXJCD,
    DYNKEY1 type A601-DYNKEY1,
    DYNKEY2 type A601-DYNKEY2,
    DYNKEY3 type A601-DYNKEY3,
    TAXGROUP type A601-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A601-DATAB,
    DATBI type A601-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_isvg.

DATA: gt_datatab_isvg  TYPE TABLE OF ty_converted_isvg,
      gs_datatab_isvg  LIKE LINE OF  gt_datatab_isvg,
      gt_work_tab_isvg TYPE TABLE OF ty_upload_isvg,
      gs_work_tab_isvg LIKE LINE OF  gt_work_tab_isvg.

"end isvg
**********************************************

"isic
TYPES: BEGIN OF ty_upload_isic,
    ALAND type A382-ALAND,
    DOCTYP type A382-DOCTYP,
    TXREG_SF type A382-TXREG_SF,
    TXREG_ST type A382-TXREG_ST,
    DYNKEY1 type A382-DYNKEY1,
    DYNKEY2 type A382-DYNKEY2,
    DYNKEY3 type A382-DYNKEY3,
    TAXGROUP type A382-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A382-DATAB,
    DATBI type A382-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_isic.

TYPES: BEGIN OF ty_converted_isic,
    ALAND type A382-ALAND,
    DOCTYP type A382-DOCTYP,
    TXREG_SF type A382-TXREG_SF,
    TXREG_ST type A382-TXREG_ST,
    DYNKEY1 type A382-DYNKEY1,
    DYNKEY2 type A382-DYNKEY2,
    DYNKEY3 type A382-DYNKEY3,
    TAXGROUP type A382-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A382-DATAB,
    DATBI type A382-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_isic.

DATA: gt_datatab_isic  TYPE TABLE OF ty_converted_isic,
      gs_datatab_isic  LIKE LINE OF  gt_datatab_isic,
      gt_work_tab_isic TYPE TABLE OF ty_upload_isic,
      gs_work_tab_isic LIKE LINE OF  gt_work_tab_isic.

"end isic
**********************************************

"ist2
TYPES: BEGIN OF ty_upload_ist2,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_ist2.

TYPES: BEGIN OF ty_converted_ist2,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_ist2.

DATA: gt_datatab_ist2  TYPE TABLE OF ty_converted_ist2,
      gs_datatab_ist2  LIKE LINE OF  gt_datatab_ist2,
      gt_work_tab_ist2 TYPE TABLE OF ty_upload_ist2,
      gs_work_tab_ist2 LIKE LINE OF  gt_work_tab_ist2.

"end ist2
**********************************************

"istb
TYPES: BEGIN OF ty_upload_istb,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_istb.

TYPES: BEGIN OF ty_converted_istb,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_istb.

DATA: gt_datatab_istb  TYPE TABLE OF ty_converted_istb,
      gs_datatab_istb  LIKE LINE OF  gt_datatab_istb,
      gt_work_tab_istb TYPE TABLE OF ty_upload_istb,
      gs_work_tab_istb LIKE LINE OF  gt_work_tab_istb.

"end istb
**********************************************

"istc
TYPES: BEGIN OF ty_upload_istc,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_istc.

TYPES: BEGIN OF ty_converted_istc,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_istc.

DATA: gt_datatab_istc  TYPE TABLE OF ty_converted_istc,
      gs_datatab_istc  LIKE LINE OF  gt_datatab_istc,
      gt_work_tab_istc TYPE TABLE OF ty_upload_istc,
      gs_work_tab_istc LIKE LINE OF  gt_work_tab_istc.

"end istc
**********************************************

"isti
TYPES: BEGIN OF ty_upload_isti,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_isti.

TYPES: BEGIN OF ty_converted_isti,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_isti.

DATA: gt_datatab_isti  TYPE TABLE OF ty_converted_isti,
      gs_datatab_isti  LIKE LINE OF  gt_datatab_isti,
      gt_work_tab_isti TYPE TABLE OF ty_upload_isti,
      gs_work_tab_isti LIKE LINE OF  gt_work_tab_isti.

"end isti
**********************************************

"istn
TYPES: BEGIN OF ty_upload_istn,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_istn.

TYPES: BEGIN OF ty_converted_istn,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_istn.

DATA: gt_datatab_istn  TYPE TABLE OF ty_converted_istn,
      gs_datatab_istn  LIKE LINE OF  gt_datatab_istn,
      gt_work_tab_istn TYPE TABLE OF ty_upload_istn,
      gs_work_tab_istn LIKE LINE OF  gt_work_tab_istn.

"end istn
**********************************************

"ists
TYPES: BEGIN OF ty_upload_ists,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_ists.

TYPES: BEGIN OF ty_converted_ists,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_ists.

DATA: gt_datatab_ists  TYPE TABLE OF ty_converted_ists,
      gs_datatab_ists  LIKE LINE OF  gt_datatab_ists,
      gt_work_tab_ists TYPE TABLE OF ty_upload_ists,
      gs_work_tab_ists LIKE LINE OF  gt_work_tab_ists.

"end ists
**********************************************

"istt
TYPES: BEGIN OF ty_upload_istt,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_upload_istt.

TYPES: BEGIN OF ty_converted_istt,
    ALAND type A348-ALAND,
    TXREG_SF type A348-TXREG_SF,
    TXREG_ST type A348-TXREG_ST,
    XSUBT type A348-XSUBT,
    DYNKEY1 type A348-DYNKEY1,
    DYNKEY2 type A348-DYNKEY2,
    DYNKEY3 type A348-DYNKEY3,
    TAXGROUP type A348-TAXGROUP,
    KBETR type KONP-KBETR,
    KONWA type KONP-KONWA,
    KPEIN type KONP-KPEIN,
    KMEIN type KONP-KMEIN,
    DATAB type A348-DATAB,
    DATBI type A348-DATBI,
*    MWSK1 type KONP-MWSK1,
  END OF ty_converted_istt.

DATA: gt_datatab_istt  TYPE TABLE OF ty_converted_istt,
      gs_datatab_istt  LIKE LINE OF  gt_datatab_istt,
      gt_work_tab_istt TYPE TABLE OF ty_upload_istt,
      gs_work_tab_istt LIKE LINE OF  gt_work_tab_istt.

"end istt
**********************************************

" end of new tables

DATA: gt_raw TYPE truxs_t_text_data.
DATA: fieldcatalog TYPE slis_t_fieldcat_alv WITH HEADER LINE,
      g_variant TYPE disvariant.
DATA: gs_selfield TYPE slis_selfield.  "Information cursor position ALV<br />
DATA: gd_layout     TYPE slis_layout_alv.
DATA: lv_profile like BAPICATS6-PROFILE.

DATA: LT_RETURN LIKE BAPIRETURN1,
      gt_return         TYPE TABLE OF BAPIRET2,
      lt_return_full    TYPE TABLE OF BAPIRET2,
      ls_return         LIKE LINE OF  lt_return_full.

DATA: RETURN like bapireturn1.

DATA: SUBRC LIKE SY-SUBRC.


"FM tables.
Data: lt_komv like table of komv with header line,
      ls_komv like line of lt_komv,
      lt_komg like table of komg with header line,
      ls_komg like line of lt_komg,
      lt_komk like table of komk with header line,
      ls_komk like line of lt_komk,
      lt_komp like table of komp with header line,
      ls_komp like line of lt_komp,
      lt_pispr like table of pispr with header line,
      ls_pispr like line of lt_pispr,
      lt_newrec.

Data: lv_kotabnr like vake-kotabnr,
      lv_kschl like vake-kschl,
      lv_datbi like vake-datbi,
      lv_datab like vake-datab.