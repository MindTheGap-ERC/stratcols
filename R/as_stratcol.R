as_stratcol = function(thickness, facies, L_unit = NULL, base = 0){
  #' @export
  #'
  #' @title define stratigraphic columns object
  #'
  #' @param thickness bed thicknesses
  #' @param facies facies of bed
  #' @param L_unit  SI unit of bed thickenss
  #' @param base position of lowest bed
  #'
  #' @description
    #' defines an S3 object representing a stratigraphic column.
    #'
  #' @seealso [is_stratcol()] to check for validity
  #'

  x = list(bdry =cumsum(c(base, thickness)),
           fa = facies,
           L_unit = L_unit)
  class(x) = "stratcol"
  return(x)
}