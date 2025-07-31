facies_repetitions = function(s){
  #' @export
  #' @title have successive beds identical facies
  #'
  #' @param s stratigraphic column
  #'
  #' @returns logical. Do two successive beds have the same facies?
  #'

  UseMethod("facies_repetitions")
}

facies_repetitions.stratcol = function(s){
 #' @export

  if (no_beds(s) == 1){
    return(FALSE)
  }

fa = facies_names.stratcol(s)
n = no_beds.stratcol(s)
fa_s = fa[1:(n-1)]
fa_e = fa[2:n]
rep = any(fa_s == fa_e)

return(rep)
}
