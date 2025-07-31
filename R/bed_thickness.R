bed_thickness = function(s){
  #' @export
  #'
  #' @title extract bed thicknesses
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #'
  #' @description
    #' extracts bed thicknesses from stratigraphic column
    #'
  #' @returns a numeric vector of bed thicknesses
  #'
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
    #' thickness = bed_thickness(s)
    #' hist(thickness, main = "Bed thickness", xlab = paste0("Thickness (m)"))
    #'
  #'
  UseMethod("bed_thickness")
}

bed_thickness.stratcol = function(s){
  #' @export
  #'
  return(diff(s$bdry))
}
