bed_thickness = function(s){
  #' @export
  #'
  #' @title extract bed thicknesses
  #'
  #' @param s a `stratcol` object
  #'
  #' @description
    #' extracts bed thicknesses from stratigraphic column
    #'
  #' @returns a numberic vector of bed thicknesses
  #'
  UseMethod("bed_thickness")
}

bed_thickness.stratcol = function(s){
  #' @export
  #'
  return(diff(s$bdry))
}
