
*bapi_material_get_all
* importing value(material)  type matnr
*  value(comp_code)  type bukrs optional
*  value(val_area)  type bwkey optional
*  value(val_type)  type bwtar_d optional
*  value(plant)  type werks_d optional
*  value(stge_loc)  type lgort_d optional
*  value(salesorg)  type vkorg optional
*  value(distr_chan)  type vtweg optional
*  value(whsenumber)  type lgnum optional
*  value(stge_type)  type lgtyp optional
*  value(lifo_valuation_level)  type mykey optional
*  value(kzrfb_all)  type kzrfb optional
* exporting value(clientdata)  type bapi_mara_ga
*  value(plantdata)  type bapi_marc_ga
*  value(forecastparameters)  type bapi_mpop_ga
*  value(planningdata)  type bapi_mpgd_ga
*  value(storagelocationdata)  type bapi_mard_ga
*  value(valuationdata)  type bapi_mbew_ga
*  value(warehousenumberdata)  type bapi_mlgn_ga
*  value(salesdata)  type bapi_mvke_ga
*  value(storagetypedata)  type bapi_mlgt_ga
*  value(prtdata)  type bapi_mfhm_ga
*  value(lifovaluationdata)  type bapi_myms_ga
* tables materialdescription  type standard table of bapi_makt_ga with header line optional
*  unitsofmeasure  type standard table of bapi_marm_ga with header line optional
*  internationalartnos  type standard table of bapi_mean_ga with header line optional
*  materiallongtext  type standard table of bapi_mltx_ga with header line optional
*  taxclassifications  type standard table of bapi_mlan_ga with header line optional
*  extensionout  type standard table of bapiparex with header line optional
*  return  type standard table of bapireturn with header line optional
*
*
*Documentation
*
*BAPI for Reading Material Data
*
*Longtext Documentation  Longtext Documentation
*
*Parameters
*
*
*importing  material   Material Number
*importing  comp_code   Company Code
*importing  val_area   Valuation Area
*importing  val_type   Valuation Type
*importing  plant   Plant
*importing  stge_loc   Storage Location
*importing  salesorg   Sales Organization
*importing  distr_chan   Distribution Channel
*importing  whsenumber   Warehouse Number / Warehouse Complex
*importing  stge_type   Storage Type
*importing  lifo_valuation_level   LIFO Valuation Level
*importing  kzrfb_all   Indicator: reset buffer for Material_Pre_Fetch
*exporting  clientdata   Material Data at Client Level
*exporting  plantdata   Material Data at Plant Level
*exporting  forecastparameters   Forecast Parameters
*exporting  planningdata   Change Document Structure for Material Master/Product Group
*exporting  storagelocationdata   Material Data at Storage Location Level
*exporting  valuationdata   Valuation Data
*exporting  warehousenumberdata   Warehouse Number Data
*exporting  salesdata   Sales Data
*exporting  storagetypedata   Storage type data
*exporting  prtdata   Production Resource Tool (PRT) Fields in the Material Master
*exporting  lifovaluationdata   LIFO-Relevant Material Data
*tables  materialdescription   Material Descriptions
*tables  unitsofmeasure   Units of Measure
*tables  internationalartnos   International Article Numbers (EANs)
*tables  materiallongtext   Long Texts
*tables  taxclassifications   Tax Data
*tables  extensionout   Reference Structure for BAPI Parameters EXTENSIONIN/EXTENSIO
*tables  return   Return Parameters

data: lv_material   type mara-matnr value '000000000000000216',
      lv_plant      type marc-werks value 'ZM03',
      gs_clientdata type bapi_mara_ga.
