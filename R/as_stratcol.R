as_stratcol = function(thickness, facies, L_unit = NULL, base = 0, change_names = TRUE){
  #' @export
  #'
  #' @title define stratigraphic columns object
  #'
  #' @param thickness bed thicknesses
  #' @param facies facies of bed
  #' @param L_unit  SI unit of bed thickenss
  #' @param base position of lowest bed
  #' @param change_names should facies names be changed to start with 1?
  #'
  #' @description
    #' defines an S3 object representing a stratigraphic column. Facies names will be changed to start with 1 at the bottom of the column
    #'
  #'
  #'
  if (change_names){
    fa_old = facies
    fa = rep(NA, length(fa_old))
    i = 1
    for (j in seq_along(fa_old)){
      if ( ! (fa_old[j] %in% fa)){
        fa[fa_old == fa_old[j]] = i
        i = i+1
      }
    }
    facies = fa
  }


  x = list(bdry =cumsum(c(base, thickness)),
           fa = facies,
           L_unit = L_unit)
  class(x) = "stratcol"
  return(x)
}
