get_L_unit = function(s){
  #' @export
  #'
  #' @title extract length unit from stratigraphic columns
  #'
  #' @param s stratigraphic columns
  #'
  #' @returns string or NULL, the lenght unit of the stratigraphic columns
  #'
  UseMethod("get_L_unit")
}

get_L_unit.stratcol = function(s){
  #' @export
  return(s$L_unit)
}
