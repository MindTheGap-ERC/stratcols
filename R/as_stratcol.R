as_stratcol = function(thickness, facies, L_unit = NULL, base = 0){
  #' @export
  #'
  #' @title define stratigraphic column
  #'
  #' @param thickness numeric vector, bed thicknesses
  #' @param facies vector, facies code of beds
  #' @param L_unit  length unit of bed thickness
  #' @param base position of lowest bed boundary
  #'
  #' @description
    #' defines an S3 object `stratcol` representing a stratigraphic column.
    #'
  #' @seealso [is_stratcol()] to check for validity
  #'

  x = list(bdry =cumsum(c(base, thickness)),
           fa = facies,
           L_unit = L_unit)
  class(x) = "stratcol"
  return(x)
}
