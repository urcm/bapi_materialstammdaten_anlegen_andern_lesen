

*bapi_material_get_detail
* importing value(material)  type matnr
*  value(plant)  type werks_d optional
*  value(valuationarea)  type bwkey optional
*  value(valuationtype)  type bwtar_d optional
*  value(material_evg)  type bapimgvmatnr optional
* exporting value(material_general_data)  type bapimatdoa
*  value(return)  type bapireturn
*  value(materialplantdata)  type bapimatdoc
*  value(materialvaluationdata)  type bapimatdobew
*
*
*Documentation
*
*Determine Details for a Material
*
*Longtext Documentation  Longtext Documentation
*
*Parameters
*
*
*importing  material   Material No.
*importing  plant   Plant
*importing  valuationarea   Valuation area
*importing  valuationtype   Valuation type
*exporting  material_general_data   General material data
*exporting  return   Return Parameter
*exporting  materialplantdata   Plant data
