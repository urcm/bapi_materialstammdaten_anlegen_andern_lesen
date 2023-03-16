* importing value(headdata)  type bapimathead
*  value(clientdata)  type bapi_mara optional
*  value(clientdatax)  type bapi_marax optional
*  value(plantdata)  type bapi_marc optional
*  value(plantdatax)  type bapi_marcx optional
*  value(forecastparameters)  type bapi_mpop optional
*  value(forecastparametersx)  type bapi_mpopx optional
*  value(planningdata)  type bapi_mpgd optional
*  value(planningdatax)  type bapi_mpgdx optional
*  value(storagelocationdata)  type bapi_mard optional
*  value(storagelocationdatax)  type bapi_mardx optional
*  value(valuationdata)  type bapi_mbew optional
*  value(valuationdatax)  type bapi_mbewx optional
*  value(warehousenumberdata)  type bapi_mlgn optional
*  value(warehousenumberdatax)  type bapi_mlgnx optional
*  value(salesdata)  type bapi_mvke optional
*  value(salesdatax)  type bapi_mvkex optional
*  value(storagetypedata)  type bapi_mlgt optional
*  value(storagetypedatax)  type bapi_mlgtx optional
*  value(flag_online)  type testrun default space
*  value(flag_cad_call)  type testrun default space
*  value(no_dequeue)  type testrun default space
*  value(no_rollback_work)  type testrun default space
* exporting value(return)  type bapiret2
* tables materialdescription  type standard table of bapi_makt with header line optional
*  unitsofmeasure  type standard table of bapi_marm with header line optional
*  unitsofmeasurex  type standard table of bapi_marmx with header line optional
*  internationalartnos  type standard table of bapi_mean with header line optional
*  materiallongtext  type standard table of bapi_mltx with header line optional
*  taxclassifications  type standard table of bapi_mlan with header line optional
*  returnmessages  type standard table of bapi_matreturn2 with header line optional
*  prtdata  type standard table of bapi_mfhm with header line optional
*  prtdatax  type standard table of bapi_mfhmx with header line optional
*  extensionin  type standard table of bapiparex with header line optional
*  extensioninx  type standard table of bapiparexx with header line optional
*
*
*Documentation
*
*Create and Change Material Master Data
*
*Longtext Documentation  Longtext Documentation
*
*Parameters
*
*
*importing  headdata   Header segment with control information
*importing  clientdata   Client-specific material data
*importing  clientdatax   Information on update for CLIENTDATA
*importing  plantdata   Plant-specific material data
*importing  plantdatax   Information on update for PLANTDATA
*importing  forecastparameters   Forecast Parameters
*importing  forecastparametersx   Information on update for FORECASTDATA
*importing  planningdata   Planning data
*importing  planningdatax   Information on update for PLANNINGDATA
*importing  storagelocationdata   Storage-location-specific material data
*importing  storagelocationdatax   Information on update for STORAGELOCATIONDATA
*importing  valuationdata   Valuation data
*importing  valuationdatax   Information on update for VALUATIONDATA
*importing  warehousenumberdata   Warehouse-number-specific material data
*importing  warehousenumberdatax   Information on update for WAREHOUSEDATA
*importing  salesdata   Sales data
*importing  salesdatax   Information on update for SALESDATA
*importing  storagetypedata   Storage-type-specific material data
*importing  storagetypedatax   Information on update for STORAGETYPEDATA
*importing  flag_online   No ALE Field Selection
*importing  flag_cad_call   Call From CAD System
*importing  no_dequeue   Screens, display user entry
*importing  no_rollback_work   Override rollback if error occurs
*exporting  return   Return parameters
*tables  materialdescription   Material descriptions
*tables  unitsofmeasure   Units of measure
*tables  unitsofmeasurex   Information on update for UNITSOFMEASURE
*tables  internationalartnos   International Article Numbers (EANs)
*tables  materiallongtext   Long texts
*tables  taxclassifications   Tax classifications
*tables  returnmessages   All messages
*tables  prtdata   Production resource/tool (PRT) fields in the material master
*tables  prtdatax   Information on update for PRTDATAX
*tables  extensionin   Reference Structure for BAPI Parameters EXTENSIONIN/EXTENSIO
*tables  extensioninx   Reference Structure for BAPI Parameters EXTENSIONIN/EXTENSIO


types: begin of ty_material,
         matnr type rmmg1-matnr,
         mbrsh type rmmg1-mbrsh,
         mtart type rmmg1-mtart,
         matkl type mara-matkl, "matl_group
         meins type mara-meins, "base_uom
         ntgew type mara-ntgew, "net_weight
         gewei type mara-gewei, " unit_of_wt
         werks type rmmg1-werks,
         ekgrp type eine-ekgrp,  " pur_group
         lgort type rmmg1-lgort,
         langu type rmmg1-spras,
         laiso type t002-laiso,
         maktx type makt-maktx,
         lrmei type rlbes-lrmei,
         brgew type mara-brgew,
       end of ty_material.


data: gs_bapimathead          type bapimathead,
      gs_clientdata           type bapi_mara,
      gs_clientdatax          type bapi_marax,
      gs_plantdata            type bapi_marc,
      gs_plantdatax           type bapi_marcx,
      gs_storagelocationdata  type bapi_mard,
      gs_storagelocationdatax type bapi_mardx,
      gs_valuationdata        type bapi_mbew,
      gs_valuationdatax       type bapi_mbewx.


data: gt_materialdescription type standard table of bapi_makt,
      gs_materialdescription like line of gt_materialdescription.

data: gt_unitsofmeasure  type standard table of bapi_marm,
      gs_unitsofmeasure  like line of gt_unitsofmeasure,
      gt_unitsofmeasurex type standard table of bapi_marmx,
      gs_unitsofmeasurex like line of gt_unitsofmeasurex.
      
data: gs_return type bapiret2.
data: gt_returnmessages  type standard table of bapi_matreturn2.      


start-of-selection.

******* Kopfdaten ausfüllen ****************

  gs_bapimathead-material = 'ZMADM3'.
  gs_bapimathead-ind_sector = 'M'.
  gs_bapimathead-matl_type = 'FHMI'.
  gs_bapimathead-basic_view = abap_true.
  gs_bapimathead-purchase_view = abap_true.
  gs_bapimathead-account_view = abap_true.
