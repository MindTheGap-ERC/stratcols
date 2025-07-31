facies_repetitions = function(s){
  #' @export
  #' @title have successive beds identical facies?
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #'
  #' @returns TRUE or FALSE. Do at least two successive beds have the same facies?
  #'
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
    #' facies_repetitions(s) # returns FALSE
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "sand", "shale", "shale"), L_unit = "m")
    #' facies_repetitions(s) # returns TRUE
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
