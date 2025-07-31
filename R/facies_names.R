facies_names = function(s){
  #' @export
  #' @title extract facies names from stratigraphic column
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #'
  #' @return vector of facies names for each bed
  #'
  #' @seealso [unique_facies_names()] to get a list of unique facies names
  #'
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
    #' facies = facies_names(s)
    #' print(facies)
  #'
  UseMethod("facies_names")
}

facies_names.stratcol = function(s){
  #' @export
  #'
  return(s$fa)
}
