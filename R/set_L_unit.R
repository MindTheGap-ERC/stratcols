set_L_unit = function(s, L_unit){
  #' @export
  #' @title set length unit of strat column
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #' @param L_unit string or NULL, the length unit
  #'
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"))
    #' s = set_L_unit(s, "m")
    #' get_L_unit(s) # returns "m"
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
