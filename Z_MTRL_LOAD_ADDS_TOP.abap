*&---------------------------------------------------------------------*
*&  Include           Z_CUST_LOAD_TOP
*&---------------------------------------------------------------------*
*PARAMETERS: rb_makt RADIOBUTTON GROUP rad1 DEFAULT 'X',
*            rd_mdma RADIOBUTTON GROUP rad1,
*            rd_mard RADIOBUTTON GROUP rad1,
*            rd_mbew RADIOBUTTON GROUP rad1,
*            rd_mlgn RADIOBUTTON GROUP rad1,
*            rd_mlgt RADIOBUTTON GROUP rad1,
*            rd_marm RADIOBUTTON GROUP rad1,
*            rd_mltx RADIOBUTTON GROUP rad1,
*            rd_mlan RADIOBUTTON GROUP rad1.
"rd_mver

*************** start of types

***** makt
TYPES: BEGIN OF ty_upload_makt,
MATNR type MARA-MATNR,
SPRAS	type T002-SPRAS,
ISO_SPRAS	type T002-LAISO,
MAKTX type MAKT-MAKTX,
       END OF ty_upload_makt.

TYPES: BEGIN OF ty_converted_makt,
MATNR type MARA-MATNR,
SPRAS	type T002-SPRAS,
ISO_SPRAS	type T002-LAISO,
MAKTX type MAKT-MAKTX,
       END OF ty_converted_makt.

***** mdma
TYPES: BEGIN OF ty_upload_mdma,
MATNR type mdma-MATNR,
BERID	type mdma-BERID,
WERKS	type mdma-WERKS,
DISMM type mdma-DISMM,
DISPO type mdma-DISPO,
DISLS	type mdma-DISLS,
LGPRO	type mdma-LGPRO,
LGFSB type mdma-LGFSB,
       END OF ty_upload_mdma.

TYPES: BEGIN OF ty_converted_mdma,
MATNR type mdma-MATNR,
BERID	type mdma-BERID,
WERKS	type mdma-WERKS,
DISMM type mdma-DISMM,
DISPO type mdma-DISPO,
DISLS	type mdma-DISLS,
LGPRO	type mdma-LGPRO,
LGFSB type mdma-LGFSB,
       END OF ty_converted_mdma.

***** mver
TYPES: BEGIN OF ty_upload_mver,
MATNR type MVER-MATNR,
WERKS type MVER-WERKS,
GJAHR type MVER-GJAHR,
PERKZ type MVER-PERKZ,
ZAHLR type MVER-ZAHLR,
GSV01 type MVER-GSV01,
GSV02 type MVER-GSV02,
GSV03 type MVER-GSV03,
GSV04 type MVER-GSV04,
GSV05 type MVER-GSV05,
GSV06 type MVER-GSV06,
GSV07 type MVER-GSV07,
GSV08 type MVER-GSV08,
GSV09 type MVER-GSV09,
GSV10 type MVER-GSV10,
GSV11 type MVER-GSV11,
GSV12 type MVER-GSV12,
GSV13 type MVER-GSV13,
UNV01 type MVER-UNV01,
UNV02 type MVER-UNV02,
UNV03 type MVER-UNV03,
UNV04 type MVER-UNV04,
UNV05 type MVER-UNV05,
UNV06 type MVER-UNV06,
UNV07 type MVER-UNV07,
UNV08 type MVER-UNV08,
UNV09 type MVER-UNV09,
UNV10 type MVER-UNV10,
UNV11 type MVER-UNV11,
UNV12 type MVER-UNV12,
UNV13 type MVER-UNV13,
MGV01 type MVER-MGV01,
MGV02 type MVER-MGV02,
MGV03 type MVER-MGV03,
MGV04 type MVER-MGV04,
MGV05 type MVER-MGV05,
MGV06 type MVER-MGV06,
MGV07 type MVER-MGV07,
MGV08 type MVER-MGV08,
MGV09 type MVER-MGV09,
MGV10 type MVER-MGV10,
MGV11 type MVER-MGV11,
MGV12 type MVER-MGV12,
MGV13 type MVER-MGV13,
MUV01 type MVER-MUV01,
MUV02 type MVER-MUV02,
MUV03 type MVER-MUV03,
MUV04 type MVER-MUV04,
MUV05 type MVER-MUV05,
MUV06 type MVER-MUV06,
MUV07 type MVER-MUV07,
MUV08 type MVER-MUV08,
MUV09 type MVER-MUV09,
MUV10 type MVER-MUV10,
MUV11 type MVER-MUV11,
MUV12 type MVER-MUV12,
MUV13 type MVER-MUV13,
       END OF ty_upload_mver.

TYPES: BEGIN OF ty_converted_mver,
MATNR type MVER-MATNR,
WERKS type MVER-WERKS,
GJAHR type MVER-GJAHR,
PERKZ type MVER-PERKZ,
ZAHLR type MVER-ZAHLR,
GSV01 type MVER-GSV01,
GSV02 type MVER-GSV02,
GSV03 type MVER-GSV03,
GSV04 type MVER-GSV04,
GSV05 type MVER-GSV05,
GSV06 type MVER-GSV06,
GSV07 type MVER-GSV07,
GSV08 type MVER-GSV08,
GSV09 type MVER-GSV09,
GSV10 type MVER-GSV10,
GSV11 type MVER-GSV11,
GSV12 type MVER-GSV12,
GSV13 type MVER-GSV13,
UNV01 type MVER-UNV01,
UNV02 type MVER-UNV02,
UNV03 type MVER-UNV03,
UNV04 type MVER-UNV04,
UNV05 type MVER-UNV05,
UNV06 type MVER-UNV06,
UNV07 type MVER-UNV07,
UNV08 type MVER-UNV08,
UNV09 type MVER-UNV09,
UNV10 type MVER-UNV10,
UNV11 type MVER-UNV11,
UNV12 type MVER-UNV12,
UNV13 type MVER-UNV13,
MGV01 type MVER-MGV01,
MGV02 type MVER-MGV02,
MGV03 type MVER-MGV03,
MGV04 type MVER-MGV04,
MGV05 type MVER-MGV05,
MGV06 type MVER-MGV06,
MGV07 type MVER-MGV07,
MGV08 type MVER-MGV08,
MGV09 type MVER-MGV09,
MGV10 type MVER-MGV10,
MGV11 type MVER-MGV11,
MGV12 type MVER-MGV12,
MGV13 type MVER-MGV13,
MUV01 type MVER-MUV01,
MUV02 type MVER-MUV02,
MUV03 type MVER-MUV03,
MUV04 type MVER-MUV04,
MUV05 type MVER-MUV05,
MUV06 type MVER-MUV06,
MUV07 type MVER-MUV07,
MUV08 type MVER-MUV08,
MUV09 type MVER-MUV09,
MUV10 type MVER-MUV10,
MUV11 type MVER-MUV11,
MUV12 type MVER-MUV12,
MUV13 type MVER-MUV13,
       END OF ty_converted_mver.

***** mard
TYPES: BEGIN OF ty_upload_mard,
MATNR type MARD-MATNR,
WERKS type MARD-WERKS,
LGORT type MARD-LGORT,
PSTAT type MARD-PSTAT,
LFGJA type MARD-LFGJA,
LFMON type MARD-LFMON,
LGPBE type MARD-LGPBE,
MDJIN type MARD-MDJIN,
       END OF ty_upload_mard.

TYPES: BEGIN OF ty_converted_mard,
MATNR type MARD-MATNR,
WERKS type MARD-WERKS,
LGORT type MARD-LGORT,
PSTAT type MARD-PSTAT,
LFGJA type MARD-LFGJA,
LFMON type MARD-LFMON,
LGPBE type MARD-LGPBE,
MDJIN type MARD-MDJIN,
       END OF ty_converted_mard.

***** mbew
TYPES: BEGIN OF ty_upload_mbew,
MATNR type MBEW-MATNR,
BWKEY type MBEW-BWKEY,
VPRSV type MBEW-VPRSV,
VERPR type MBEW-VERPR,
STPRS type MBEW-STPRS,
PEINH type MBEW-PEINH,
BKLAS type MBEW-BKLAS,
VMVPR type MBEW-VMVPR,
VMVER type MBEW-VMVER,
VMSTP type MBEW-VMSTP,
VMPEI type MBEW-VMPEI,
VMBKL type MBEW-VMBKL,
VJVPR type MBEW-VJVPR,
VJVER type MBEW-VJVER,
VJSTP type MBEW-VJSTP,
VJPEI type MBEW-VJPEI,
VJBKL type MBEW-VJBKL,
ZKPRS type MBEW-ZKPRS,
ZKDAT type MBEW-ZKDAT,
ZPLPR type MBEW-ZPLPR,
ZPLP1 type MBEW-ZPLP1,
ZPLP2 type MBEW-ZPLP2,
ZPLP3 type MBEW-ZPLP3,
ZPLD1 type MBEW-ZPLD1,
ZPLD2 type MBEW-ZPLD2,
ZPLD3 type MBEW-ZPLD3,
ABWKZ type MBEW-ABWKZ,
EKALR type MBEW-EKALR,
MLMAA type MBEW-MLMAA,
MLAST type MBEW-MLAST,
HKMAT type MBEW-HKMAT,
EKLAS type MBEW-EKLAS,
QKLAS type MBEW-QKLAS,
       END OF ty_upload_mbew.

TYPES: BEGIN OF ty_converted_mbew,
MATNR type MBEW-MATNR,
BWKEY type MBEW-BWKEY,
VPRSV type MBEW-VPRSV,
VERPR type MBEW-VERPR,
STPRS type MBEW-STPRS,
PEINH type MBEW-PEINH,
BKLAS type MBEW-BKLAS,
VMVPR type MBEW-VMVPR,
VMVER type MBEW-VMVER,
VMSTP type MBEW-VMSTP,
VMPEI type MBEW-VMPEI,
VMBKL type MBEW-VMBKL,
VJVPR type MBEW-VJVPR,
VJVER type MBEW-VJVER,
VJSTP type MBEW-VJSTP,
VJPEI type MBEW-VJPEI,
VJBKL type MBEW-VJBKL,
ZKPRS type MBEW-ZKPRS,
ZKDAT type MBEW-ZKDAT,
ZPLPR type MBEW-ZPLPR,
ZPLP1 type MBEW-ZPLP1,
ZPLP2 type MBEW-ZPLP2,
ZPLP3 type MBEW-ZPLP3,
ZPLD1 type MBEW-ZPLD1,
ZPLD2 type MBEW-ZPLD2,
ZPLD3 type MBEW-ZPLD3,
ABWKZ type MBEW-ABWKZ,
EKALR type MBEW-EKALR,
MLMAA type MBEW-MLMAA,
MLAST type MBEW-MLAST,
HKMAT type MBEW-HKMAT,
EKLAS type MBEW-EKLAS,
QKLAS type MBEW-QKLAS,
       END OF ty_converted_mbew.

***** mlgn
TYPES: BEGIN OF ty_upload_mlgn,
MATNR type MLGN-MATNR,
LGNUM type MLGN-LGNUM,
LGBKZ type MLGN-LGBKZ,
LTKZE type MLGN-LTKZE,
LTKZA type MLGN-LTKZA,
       END OF ty_upload_mlgn.

TYPES: BEGIN OF ty_converted_mlgn,
MATNR type MLGN-MATNR,
LGNUM type MLGN-LGNUM,
LGBKZ type MLGN-LGBKZ,
LTKZE type MLGN-LTKZE,
LTKZA type MLGN-LTKZA,
       END OF ty_converted_mlgn.

***** marm
TYPES: BEGIN OF ty_upload_marm,
MATNR type MARM-MATNR,
MEINH type MARM-MEINH,
UMREZ type MARM-UMREZ,
UMREN type MARM-UMREN,
LAENG type MARM-LAENG,
BREIT type MARM-BREIT,
HOEHE type MARM-HOEHE,
MEABM type MARM-MEABM,
VOLUM type MARM-VOLUM,
VOLEH type MARM-VOLEH,
BRGEW type MARM-BRGEW,
GEWEI type MARM-GEWEI,
       END OF ty_upload_marm.

TYPES: BEGIN OF ty_converted_marm,
MATNR type MARM-MATNR,
MEINH type MARM-MEINH,
UMREZ type MARM-UMREZ,
UMREN type MARM-UMREN,
LAENG type MARM-LAENG,
BREIT type MARM-BREIT,
HOEHE type MARM-HOEHE,
MEABM type MARM-MEABM,
VOLUM type MARM-VOLUM,
VOLEH type MARM-VOLEH,
BRGEW type MARM-BRGEW,
GEWEI type MARM-GEWEI,
       END OF ty_converted_marm.

***** mltx
TYPES: BEGIN OF ty_upload_mltx,
tdobject type stxh-tdobject,
tdspras type stxh-tdspras,
tdname type stxh-tdname,
tdid type stxh-tdid,
tdline type tline,
tdrefname type stxh-tdrefname,
       END OF ty_upload_mltx.

TYPES: BEGIN OF ty_converted_mltx,
tdobject type stxh-tdobject,
tdspras type stxh-tdspras,
tdname type stxh-tdname,
tdid type stxh-tdid,
tdline type tline,
tdrefname type stxh-tdrefname,
       END OF ty_converted_mltx.

***** mlan
TYPES: BEGIN OF ty_upload_mlan,
MATNR type MLAN-MATNR,
ALAND type MLAN-ALAND,
TAXM1 type MLAN-TAXM1,
TAXM2 type MLAN-TAXM2,
TAXIM type MLAN-TAXIM,
       END OF ty_upload_mlan.

TYPES: BEGIN OF ty_converted_mlan,
MATNR type MLAN-MATNR,
ALAND type MLAN-ALAND,
TAXM1 type MLAN-TAXM1,
TAXM2 type MLAN-TAXM2,
TAXIM type MLAN-TAXIM,
       END OF ty_converted_mlan.

***** ausp
TYPES: BEGIN OF ty_upload_ausp,
WERKS type marc-werks,
MATNR type mara-matnr,
KLART type ausp-klart,
ATNAM type cabn-atnam,
ATWRT type ausp-atwrt,
ATZHL type ausp-atzhl,
MAFID type ausp-mafid,
ATCOD type ausp-atcod,
       END OF ty_upload_ausp.

TYPES: BEGIN OF ty_converted_ausp,
WERKS type marc-werks,
MATNR type mara-matnr,
KLART type ausp-klart,
ATNAM type cabn-atnam,
ATWRT type ausp-atwrt,
ATZHL type ausp-atzhl,
MAFID type ausp-mafid,
ATCOD type ausp-atcod,
       END OF ty_converted_ausp.

***** mpop
TYPES: BEGIN OF ty_upload_mpop,
MATNR type mara-matnr,
WERKS type bapi_mpop-plant,
PROPR type bapi_mpop-fore_prof,
MODAW	type bapi_mpop-model_si,
MODAV type bapi_mpop-model_sp,
KZPAR	type bapi_mpop-param_opt,
OPGRA	type bapi_mpop-optim_lev,
KZINI	type bapi_mpop-initialize,
PRMOD	type bapi_mpop-fore_model,
ALPHA  type bapi_mpop-alpha_fact,
BETA1  type bapi_mpop-beta_fact,
GAMMA  type bapi_mpop-gamma_fact,
DELTA  type bapi_mpop-delta_fact,
SIGGR  type bapi_mpop-tracklimit,
PRDAT	type bapi_mpop-fore_date,
PERAN  type bapi_mpop-hist_vals,
PERIN  type bapi_mpop-init_pds,
PERIO  type bapi_mpop-season_pds,
PEREX  type bapi_mpop-expost_pds,
ANZPR  type bapi_mpop-fore_pds,
FIMON  type bapi_mpop-fixed_pds,
GEWGR type bapi_mpop-wtg_group,
       END OF ty_upload_mpop.

TYPES: BEGIN OF ty_converted_mpop,
MATNR type mara-matnr,
WERKS type bapi_mpop-plant,
PROPR type bapi_mpop-fore_prof,
MODAW	type bapi_mpop-model_si,
MODAV type bapi_mpop-model_sp,
KZPAR	type bapi_mpop-param_opt,
OPGRA	type bapi_mpop-optim_lev,
KZINI	type bapi_mpop-initialize,
PRMOD	type bapi_mpop-fore_model,
ALPHA  type bapi_mpop-alpha_fact,
BETA1  type bapi_mpop-beta_fact,
GAMMA  type bapi_mpop-gamma_fact,
DELTA  type bapi_mpop-delta_fact,
SIGGR  type bapi_mpop-tracklimit,
PRDAT	type bapi_mpop-fore_date,
PERAN  type bapi_mpop-hist_vals,
PERIN  type bapi_mpop-init_pds,
PERIO  type bapi_mpop-season_pds,
PEREX  type bapi_mpop-expost_pds,
ANZPR  type bapi_mpop-fore_pds,
FIMON  type bapi_mpop-fixed_pds,
GEWGR type bapi_mpop-wtg_group,
       END OF ty_converted_mpop.

***** prop
TYPES: BEGIN OF ty_upload_prop,
PNUM1 type prop-PNUM1,
HSNUM type prop-HSNUM,
VERSP type prop-VERSP,
PNUM2 type prop-PNUM2,
PROPR type prop-PROPR,
MODAW	type prop-MODAW,
MODAV type prop-MODAV,
KZPAR	type prop-KZPAR,
OPGRA	type prop-OPGRA,
KZINI	type prop-KZINI,
PRMOD	type prop-PRMOD,
ALPHA	type prop-ALPHA,
BETA1	type prop-BETA1,
GAMMA	type prop-GAMMA,
DELTA	type prop-DELTA,
EPSIL	type prop-EPSIL,
SIGGR	type prop-SIGGR,
PRDAT	type prop-PRDAT,
PERAN	type prop-PERAN,
PERIN	type prop-PERIN,
PERIO	type prop-PERIO,
PEREX	type prop-PEREX,
ANZPR	type prop-ANZPR,
FIMON	type prop-FIMON,
       END OF ty_upload_prop.

TYPES: BEGIN OF ty_converted_prop,
PNUM1 type prop-PNUM1,
HSNUM type prop-HSNUM,
VERSP type prop-VERSP,
PNUM2 type prop-PNUM2,
PROPR type prop-PROPR,
MODAW	type prop-MODAW,
MODAV type prop-MODAV,
KZPAR	type prop-KZPAR,
OPGRA	type prop-OPGRA,
KZINI	type prop-KZINI,
PRMOD	type prop-PRMOD,
ALPHA	type prop-ALPHA,
BETA1	type prop-BETA1,
GAMMA	type prop-GAMMA,
DELTA	type prop-DELTA,
EPSIL	type prop-EPSIL,
SIGGR	type prop-SIGGR,
PRDAT	type prop-PRDAT,
PERAN	type prop-PERAN,
PERIN	type prop-PERIN,
PERIO	type prop-PERIO,
PEREX	type prop-PEREX,
ANZPR	type prop-ANZPR,
FIMON	type prop-FIMON,
       END OF ty_converted_prop.

***** mapr
TYPES: BEGIN OF ty_upload_mapr,
WERKS type mapr-werks,
MATNR type mapr-matnr,
PNUM1 type mapr-PNUM1,
PERKZ type mapr-PERKZ,
PERIV	type mapr-PERIV,
DATUM type mapr-DATUM,
UZEIT	type mapr-UZEIT,
       END OF ty_upload_mapr.

TYPES: BEGIN OF ty_converted_mapr,
WERKS type mapr-werks,
MATNR type mapr-matnr,
PNUM1 type mapr-PNUM1,
PERKZ type mapr-PERKZ,
PERIV	type mapr-PERIV,
DATUM type mapr-DATUM,
UZEIT	type mapr-UZEIT,
       END OF ty_converted_mapr.


***** qmat
TYPES: BEGIN OF ty_upload_qmat,
ART type qmat-art,
MATNR type qmat-matnr,
WERKS type qmat-werks,
PPL type qmat-ppl,
APP type qmat-app,
MER type qmat-mer,
INSMK	type qmat-INSMK,
AVE type qmat-ave,
HPZ	type qmat-hpz,
DYN type qmat-dyn,
EIN type qmat-ein,
MPDAU type qmat-mpdau,
qkzverf type qmat-qkzverf,
qpmat type qmat-qpmat,
aktiv type qmat-aktiv,
       END OF ty_upload_qmat.

TYPES: BEGIN OF ty_converted_qmat,
ART type qmat-art,
MATNR type qmat-matnr,
WERKS type qmat-werks,
PPL type qmat-ppl,
APP type qmat-app,
MER type qmat-mer,
INSMK	type qmat-INSMK,
AVE type qmat-ave,
HPZ	type qmat-hpz,
DYN type qmat-dyn,
EIN type qmat-ein,
MPDAU type qmat-mpdau,
qkzverf type qmat-qkzverf,
qpmat type qmat-qpmat,
aktiv type qmat-aktiv,
       END OF ty_converted_qmat.


***** mvke
TYPES: BEGIN OF ty_upload_mvke,
MATNR type mvke-MATNR,
VKORG type mvke-vkorg,
VTWEG type mvke-vtweg,
MTPOS type mvke-mtpos,
DWERK	type mvke-dwerk,
       END OF ty_upload_mvke.

TYPES: BEGIN OF ty_converted_mvke,
MATNR type mvke-MATNR,
VKORG type mvke-vkorg,
VTWEG type mvke-vtweg,
MTPOS type mvke-mtpos,
DWERK	type mvke-dwerk,
       END OF ty_converted_mvke.


***** marc
TYPES: BEGIN OF ty_upload_marc,
MATNR type marc-MATNR,
WERKS type marc-WERKS,
MMSTA type marc-MMSTA,
AUSDT type marc-AUSDT,
NFMAT type marc-NFMAT,
       END OF ty_upload_marc.

TYPES: BEGIN OF ty_converted_marc,
MATNR type marc-MATNR,
WERKS type marc-WERKS,
MMSTA type marc-MMSTA,
AUSDT type marc-AUSDT,
NFMAT type marc-NFMAT,
       END OF ty_converted_marc.

***** marc
TYPES: BEGIN OF ty_upload_marcn,
MATNR type marc-MATNR,
WERKS type marc-WERKS,
NCOST type marc-NCOST,
AWSLS type marc-AWSLS,
STAWN type marc-STAWN,
HERKL type marc-HERKL,
LADGR type marc-LADGR,
MTVFP type marc-MTVFP,
       END OF ty_upload_marcn.

TYPES: BEGIN OF ty_converted_marcn,
MATNR type marc-MATNR,
WERKS type marc-WERKS,
NCOST type marc-NCOST,
AWSLS type marc-AWSLS,
STAWN type marc-STAWN,
HERKL type marc-HERKL,
LADGR type marc-LADGR,
MTVFP type marc-MTVFP,
       END OF ty_converted_marcn.

*************** end of types



*************** end of types

DATA: gt_raw TYPE truxs_t_text_data.

"marcn
DATA: gt_datatab_marcn  TYPE TABLE OF ty_converted_marcn,
      gs_datatab_marcn  LIKE LINE OF  gt_datatab_marcn,
      gt_work_tab_marcn TYPE TABLE OF ty_upload_marcn,
      gs_work_tab_marcn LIKE LINE OF  gt_work_tab_marcn.

"makt
DATA: gt_datatab_makt  TYPE TABLE OF ty_converted_makt,
      gs_datatab_makt  LIKE LINE OF  gt_datatab_makt,
      gt_work_tab_makt TYPE TABLE OF ty_upload_makt,
      gs_work_tab_makt LIKE LINE OF  gt_work_tab_makt.

"mdma
DATA: gt_datatab_mdma  TYPE TABLE OF ty_converted_mdma,
      gs_datatab_mdma  LIKE LINE OF  gt_datatab_mdma,
      gt_work_tab_mdma TYPE TABLE OF ty_upload_mdma,
      gs_work_tab_mdma LIKE LINE OF  gt_work_tab_mdma.

"mvke
DATA: gt_datatab_mvke  TYPE TABLE OF ty_converted_mvke,
      gs_datatab_mvke  LIKE LINE OF  gt_datatab_mvke,
      gt_work_tab_mvke TYPE TABLE OF ty_upload_mvke,
      gs_work_tab_mvke LIKE LINE OF  gt_work_tab_mvke,
      lt_mvke type table of mvke,
      ls_mvke like line of lt_mvke.

"marc
DATA: gt_datatab_marc  TYPE TABLE OF ty_converted_marc,
      gs_datatab_marc  LIKE LINE OF  gt_datatab_marc,
      gt_work_tab_marc TYPE TABLE OF ty_upload_marc,
      gs_work_tab_marc LIKE LINE OF  gt_work_tab_marc,
      lt_marc type table of marc,
      ls_marc like line of lt_marc.


"mpgd
DATA: gt_datatab_mver  TYPE TABLE OF ty_converted_mver,
      gs_datatab_mver  LIKE LINE OF  gt_datatab_mver,
      gt_work_tab_mver TYPE TABLE OF ty_upload_mver,
      gs_work_tab_mver LIKE LINE OF  gt_work_tab_mver.

"mard
DATA: gt_datatab_mard  TYPE TABLE OF ty_converted_mard,
      gs_datatab_mard  LIKE LINE OF  gt_datatab_mard,
      gt_work_tab_mard TYPE TABLE OF ty_upload_mard,
      gs_work_tab_mard LIKE LINE OF  gt_work_tab_mard.

"mbew
DATA: gt_datatab_mbew  TYPE TABLE OF ty_converted_mbew,
      gs_datatab_mbew  LIKE LINE OF  gt_datatab_mbew,
      gt_work_tab_mbew TYPE TABLE OF ty_upload_mbew,
      gs_work_tab_mbew LIKE LINE OF  gt_work_tab_mbew.

"mlgn
DATA: gt_datatab_mlgn  TYPE TABLE OF ty_converted_mlgn,
      gs_datatab_mlgn  LIKE LINE OF  gt_datatab_mlgn,
      gt_work_tab_mlgn TYPE TABLE OF ty_upload_mlgn,
      gs_work_tab_mlgn LIKE LINE OF  gt_work_tab_mlgn.

"marm
DATA: gt_datatab_marm  TYPE TABLE OF ty_converted_marm,
      gs_datatab_marm  LIKE LINE OF  gt_datatab_marm,
      gt_work_tab_marm TYPE TABLE OF ty_upload_marm,
      gs_work_tab_marm LIKE LINE OF  gt_work_tab_marm.

"mltx
DATA: gt_datatab_mltx  TYPE TABLE OF ty_converted_mltx,
      gs_datatab_mltx  LIKE LINE OF  gt_datatab_mltx,
      gt_work_tab_mltx TYPE TABLE OF ty_upload_mltx,
      gs_work_tab_mltx LIKE LINE OF  gt_work_tab_mltx.

"mlan
DATA: gt_datatab_mlan  TYPE TABLE OF ty_converted_mlan,
      gs_datatab_mlan  LIKE LINE OF  gt_datatab_mlan,
      gt_work_tab_mlan TYPE TABLE OF ty_upload_mlan,
      gs_work_tab_mlan LIKE LINE OF  gt_work_tab_mlan.

"ausp
DATA: gt_datatab_ausp  TYPE TABLE OF ty_converted_ausp,
      gs_datatab_ausp  LIKE LINE OF  gt_datatab_ausp,
      gt_work_tab_ausp TYPE TABLE OF ty_upload_ausp,
      gs_work_tab_ausp LIKE LINE OF  gt_work_tab_ausp,
      lv_atinn like cabn-atinn.

"mpop
DATA: gt_datatab_mpop  TYPE TABLE OF ty_converted_mpop,
      gs_datatab_mpop  LIKE LINE OF  gt_datatab_mpop,
      gt_work_tab_mpop TYPE TABLE OF ty_upload_mpop,
      gs_work_tab_mpop LIKE LINE OF  gt_work_tab_mpop.

"prop
DATA: gt_datatab_prop  TYPE TABLE OF ty_converted_prop,
      gs_datatab_prop  LIKE LINE OF  gt_datatab_prop,
      gt_work_tab_prop TYPE TABLE OF ty_upload_prop,
      gs_work_tab_prop LIKE LINE OF  gt_work_tab_prop.

"mapr
DATA: gt_datatab_mapr  TYPE TABLE OF ty_converted_mapr,
      gs_datatab_mapr  LIKE LINE OF  gt_datatab_mapr,
      gt_work_tab_mapr TYPE TABLE OF ty_upload_mapr,
      gs_work_tab_mapr LIKE LINE OF  gt_work_tab_mapr.

"qmat
DATA: gt_datatab_qmat  TYPE TABLE OF ty_converted_qmat,
      gs_datatab_qmat  LIKE LINE OF  gt_datatab_qmat,
      gt_work_tab_qmat TYPE TABLE OF ty_upload_qmat,
      gs_work_tab_qmat LIKE LINE OF  gt_work_tab_qmat.


DATA: fieldcatalog TYPE slis_t_fieldcat_alv WITH HEADER LINE,
      g_variant TYPE disvariant.
DATA: gs_selfield TYPE slis_selfield.  "Information cursor position ALV<br />
DATA: gd_layout     TYPE slis_layout_alv.


DATA: LT_RETURN LIKE BAPIRETURN1,
      gt_return         TYPE TABLE OF BAPIRET2,
      lt_return_full    TYPE TABLE OF BAPIRET2,
      ls_return         LIKE LINE OF  lt_return_full,
      RETURN like bapireturn1,
      LV_MATERR like TBIST-NUMERROR.

DATA: BEGIN OF tab_head.
        INCLUDE STRUCTURE bapimathead.
DATA: END OF tab_head.
DATA: BEGIN OF tab_plantdata.
        INCLUDE STRUCTURE bapi_marc.
DATA: END OF tab_plantdata.
DATA: BEGIN OF tab_plantdatax.
        INCLUDE STRUCTURE bapi_marcx.
DATA: END OF tab_plantdatax.
DATA: BEGIN OF tab_client.
        INCLUDE STRUCTURE bapi_mara.
DATA: END OF tab_client.
DATA: BEGIN OF tab_clientx.
        INCLUDE STRUCTURE bapi_marax.
DATA: END OF tab_clientx.
DATA: BEGIN OF tab_salesdata.
        INCLUDE STRUCTURE bapi_mvke.
DATA: END OF tab_salesdata.
DATA: BEGIN OF tab_salesdatax.
        INCLUDE STRUCTURE bapi_mvkex.
DATA: END OF tab_salesdatax.
DATA : BEGIN OF tab_return.
        INCLUDE STRUCTURE bapiret2 .
DATA : END OF tab_return.

DATA : tab_return_msgs TYPE TABLE OF bapi_matreturn2 WITH HEADER LINE .
DATA: tab_forecast   LIKE bapi_mpop,
      tab_forecastx  LIKE bapi_mpopx,
      tab_plangdata  LIKE bapi_mpgd,
      tab_plangdatax LIKE bapi_mpgdx,
      tab_stlocdata  LIKE bapi_mard,
      tab_stlocdatax LIKE bapi_mardx,
      tab_valdata    LIKE bapi_mard,
      tab_valdatax   LIKE bapi_mbewx,
      tab_warehouse  LIKE bapi_mlgn,
      tab_warehousex LIKE bapi_mlgnx,
      tab_stortyped  LIKE bapi_mlgt,
      tab_stortypedx LIKE bapi_mlgtx.

DATA: lt_head type table of bapimathead,
      ls_head like line of lt_head,
      lt_plantdata type table of bapi_marc,
      ls_plantdata like line of lt_plantdata,
      lt_client type table of bapi_mara,
      ls_client like line of lt_client,
      lt_salesdata type table of bapi_mvke,
      ls_salesdata like line of lt_salesdata,
      lt_forecast type table of bapi_mpop,
      ls_forecast  like line of lt_forecast ,
      lt_plangdata type table of bapi_mpgd,
      ls_plangdata like line of lt_plangdata,
      lt_stlocdata type table of bapi_mard,
      ls_stlocdata like line of lt_stlocdata,
      lt_valdata type table of bapi_mbew,
      ls_valdata like line of lt_valdata,
      lt_warehouse type table of bapi_mlgn,
      ls_warehouse like line of lt_warehouse,
      lt_stortyped type table of bapi_mlgt,
      ls_stortyped like line of lt_stortyped,
      lt_mver type table of mver,
      ls_mver like line of lt_mver,
      lt_mard type table of mard,
      ls_mard like line of lt_mard,
      lt_mlgn type table of mlgn,
      ls_mlgn like line of lt_mlgn,
      lt_mara type table of mara,
      ls_mara like line of lt_mara,
      lt_mlan type table of mlan,
      ls_mlan like line of lt_mlan,
      lt_prop type table of prop,
      ls_prop like line of lt_prop,
      lt_mapr type table of mapr,
      ls_mapr like line of lt_mapr,
      lt_qmat type table of qmat,
      ls_qmat like line of lt_qmat.


DATA: lt_plantdatax type table of bapi_marcx,
      ls_plantdatax like line of lt_plantdatax,
      lt_clientx type table of bapi_marax,
      ls_clientx like line of lt_clientx,
      lt_salesdatax type table of bapi_mvkex,
      ls_salesdatax like line of lt_salesdatax,
      lt_forecastx type table of bapi_mpopx,
      ls_forecastx  like line of lt_forecastx,
      lt_plangdatax type table of bapi_mpopx,
      ls_plangdatax like line of lt_plangdatax,
      lt_stlocdatax type table of bapi_mardx,
      ls_stlocdatax like line of lt_stlocdatax,
      lt_valdatax type table of bapi_mbewx,
      ls_valdatax like line of lt_valdatax,
      lt_warehousex type table of bapi_mlgnx,
      ls_warehousex like line of lt_warehousex,
      lt_stortypedx type table of bapi_mlgtx,
      ls_stortypedx like line of lt_stortypedx,
      lt_materialdescription type table of bapi_makt,
      ls_materialdescription like line of lt_materialdescription,
      lt_unitsofmeasure type table of bapi_marm,
      ls_unitsofmeasure like line of lt_unitsofmeasure,
      lt_unitsofmeasurex type table of bapi_marmx,
      ls_unitsofmeasurex like line of lt_unitsofmeasurex,
      lt_materiallongtext type table of bapi_mltx,
      ls_materiallongtext like line of lt_materiallongtext,
      lt_taxclassifications type table of bapi_mlan,
      ls_taxclassifications like line of lt_taxclassifications.

"classes FM.
*"  IMPORTING
DATA:
LV_OBJECTKEY LIKE  BAPI1003_KEY-OBJECT,
LV_OBJECTTABLE LIKE  BAPI1003_KEY-OBJECTTABLE,
LV_CLASSNUM LIKE  BAPI1003_KEY-CLASSNUM,
LV_CLASSTYPE LIKE  BAPI1003_KEY-CLASSTYPE,
LV_STATUS LIKE BAPI1003_KEY-STATUS,
LV_STANDARDCLASS LIKE  BAPI1003_KEY-STDCLASS,
LV_CHANGENUMBER LIKE  BAPI1003_KEY-CHANGENUMBER,
LV_KEYDATE LIKE  BAPI1003_KEY-KEYDATE,
LV_NO_DEFAULT_VALUES LIKE  BAPI1003_KEY-FLAG,
LV_KEEP_SAME_DEFAULTS LIKE  BAPI1003_KEY-FLAG,
LV_OBJECTKEY_LONG TYPE  BAPI1003_KEY-OBJECT_LONG,
LV_CLASSIF_STATUS LIKE  BAPI1003_KEY-STATUS,
LT_ALLOCVALUESNUMNEW type table of BAPI1003_ALLOC_VALUES_NUM,
LT_ALLOCVALUESCHARNEW type table of BAPI1003_ALLOC_VALUES_CHAR,
LT_ALLOCVALUESCURRNEW type table of BAPI1003_ALLOC_VALUES_CURR,
LS_ALLOCVALUESNUMNEW like line of LT_ALLOCVALUESNUMNEW,
LS_ALLOCVALUESCHARNEW like line of LT_ALLOCVALUESCHARNEW,
LS_ALLOCVALUESCURRNEW like line of LT_ALLOCVALUESCURRNEW,
LV_CLASS like KLAH-CLASS.
"GT_RETURN TYPE TABLE OF bapiret2.