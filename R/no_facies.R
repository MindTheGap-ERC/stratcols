no_facies = function(s){
  #' @export
  #'
  #' @title number of distinct facies
  #'
  #' @param s stratigraphic column
  #'
  #' @returns an integer
  #'
  UseMethod("no_facies")
}

no_facies.stratcol = function(s){
  #' @export

  return(length(unique_facies_names.stratcol(s)))
}
