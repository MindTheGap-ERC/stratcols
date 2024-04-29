facies_names = function(s){
  #' @export
  #' @title extract facies names from stratigraphic column
  #'
  #' @param s a stratcol object
  #'
  #' @return a vector of facies names for each bed
  #'
  #' @seealso [unique_facies_names()] to get a list of unique facies names
  #'
  UseMethod("facies_names")
}

facies_names.stratcol = function(s){
  #' @export
  #'
  return(s$fa)
}
