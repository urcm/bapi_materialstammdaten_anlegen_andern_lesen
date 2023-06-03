* bapi_material_get_detail
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


data: gv_matnr                 type matnr value '216',
      gv_plant                 type werks_d value 'ZM03',
      gt_materialplantdata     type bapimatdoc,
      gt_materialvaluationdata type bapimatdobew,
      gt_material_general_data type bapimatdoa,
      gt_return                type bapireturn.


gv_matnr  = |{ gv_matnr width = 18 alpha = in }|.


call function 'BAPI_MATERIAL_GET_DETAIL'
  exporting
    material              = gv_matnr   " Material No.
    plant                 = gv_plant    " Plant
*   valuationarea         =     " Valuation area
*   valuationtype         =     " Valuation type
*   material_evg          =
  importing
    material_general_data = gt_material_general_data   " General material data
    return                = gt_return    " Return Parameter
    materialplantdata     = gt_materialplantdata        " Plant data
    materialvaluationdata = gt_materialvaluationdata.    " Valuation area data

cl_demo_output=>write_data( gt_material_general_data ).
cl_demo_output=>write_data( gt_materialplantdata ).
cl_demo_output=>write_data( gt_materialvaluationdata ).
cl_demo_output=>write_data( gt_return ).
cl_demo_output=>display(  ).
