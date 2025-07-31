no_beds = function(s){
  #' @export
  #'
  #' @title number of beds
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #'
  #' @returns integer, the number of beds
  #'
  #' @examples
    #' s =  as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
    #' no_beds(s) # returns 4
  #'
  UseMethod("no_beds")
}

no_beds.stratcol = function(s){
  #' @export

  no_of_beds = length(s$bdry) - 1
return(no_of_beds)
}
