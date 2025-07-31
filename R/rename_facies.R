rename_facies = function(s, new_names, old_names = NULL){
  #' @title rename facies
  #' @export
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #' @param new_names new facies names
  #' @param old_names NULL or a list of old facies names. If NULL, all old facies names will be used
  #'
  #' @description
    #' replaces old facies names with new ones
    #'
  #' @returns stratigraphic column (a `stratcol` object) with renamed facies
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
    #' s = rename_facies(s, new_names = c("sandy", "shaly"))
    #'

  UseMethod("rename_facies")
}

rename_facies.stratcol = function(s, new_names, old_names = NULL){
  #' @export
  if (is.null(old_names)){
    old_names = unique_facies_names.stratcol(s)
  }

  new_fa = rep(NA, no_facies.stratcol(s))
  for ( i in seq_along(old_names)){
    new_fa = replace(new_fa, s$fa == old_names[i], new_names[i])
  }
  s$fa = new_fa
  return(s)
}
