rename_facies = function(s, new_names, old_names = NULL){
  #' @title rename facies
  #' @export
  #'
  #' @param s stratcol object
  #' @param new_names new facies names
  #' @param old_names NULL or a list of old facies names. If NULL, all old facies names will be used
  #'
  #' @description
    #' replaces old facies names with new ones
    #'
  #' @returns a stratcol object
  #'

  UseMethod("rename_facies")
}

rename_facies.stratcol = function(s, new_names, old_names = NULL){
  #' @export
  if (is.null(old_names)){
    old_names = unique(s$fa)
  }

  new_fa = rep(NA, length(s$fa))
  for ( i in seq_along(old_names)){
    new_fa = replace(new_fa, s$fa == old_names[i], new_names[i])
  }
  s$fa = new_fa
  return(s)
}
