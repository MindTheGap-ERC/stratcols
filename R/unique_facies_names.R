unique_facies_names = function(s){
  #' @export
  #'
  #' @title return unique facies names from a stratigraphic column
  #'
  #' @param s a strat col object
  #'
  #' @returns a vector of unique facies names in the stratigraphic column
  #'
  UseMethod("unique_facies_names")
}

unique_facies_names.stratcol = function(s){
  #' @export
  #'

  fa_names = facies_names.stratcol(s)
  return(unique(fa_names))
  }
