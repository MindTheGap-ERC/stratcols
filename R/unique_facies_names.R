unique_facies_names = function(s){
  #' @export
  #'
  #' @title return unique facies names from a stratigraphic column
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #'
  #' @returns a vector of unique facies names in the stratigraphic column
  #' @seealso [facies_names()] to get facies names for each bed
  #'
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
    #' unique_facies = unique_facies_names(s) # returns c("sand", "shale")
    #'
  UseMethod("unique_facies_names")
}

unique_facies_names.stratcol = function(s){
  #' @export
  #'

  fa_names = facies_names.stratcol(s)
  return(unique(fa_names))
  }
