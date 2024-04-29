no_beds = function(s){
  #' @export
  #'
  #' @title determine number of beds
  #'
  #' @param s stratigraphic column
  #'
  #' @returns integer, the number of beds
  #'
  UseMethod("no_beds")
}

no_beds.stratcol = function(s){
  #' @export

  no_of_beds = length(s$bdry) - 1
return(no_of_beds)
}
