set_L_unit = function(s, L_unit){
  #' @export
  #' @title set length unit of strat column
  #'
  #' @param s stratigraphic column
  #' @param L_unit string or NULL, the length unit
  #'
  UseMethod("set_L_unit")
}

set_L_unit.stratcol = function(s, L_unit){
  #' @export
  #'

  s_out = as_stratcol(thickness = bed_thickness.stratcol(s),
                  facies = facies_names.stratcol(s),
                  L_unit = L_unit,
                  base = get_base.stratcol(s))
  return(s_out)
}
