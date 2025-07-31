get_L_unit = function(s){
  #' @export
  #'
  #' @title extract length unit from stratigraphic columns
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #'
  #' @returns string or NULL, the length unit of the stratigraphic column
  #'
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
    #' get_L_unit(s) # returns "m"
  UseMethod("get_L_unit")
}

get_L_unit.stratcol = function(s){
  #' @export
  return(s$L_unit)
}
