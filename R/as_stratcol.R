as_stratcol = function(thickness, facies, L_unit = NULL, base = 0){
  #' @export
  #'
  #' @title define stratigraphic column
  #'
  #' @param thickness numeric vector, bed thicknesses
  #' @param facies vector, facies code of beds (numeric or character)
  #' @param L_unit  length unit of bed thickness
  #' @param base position of lowest bed boundary
  #'
  #' @description
    #' defines an S3 object `stratcol` representing a stratigraphic column. Does not check for the validity of the constructed object. For this, use `is_stratcol`
    #'
  #' @seealso [is_stratcol()] to check for validity
  #'
  #' @returns an object of S3 class `stratcol`
  #'
  #' @examples
    #' n_beds = 10
    #' # 10 beds with thickness between 0.1 and 1 m
    #' thickness = runif(n_beds, 0.1, 1)
    #' # alternations of sand and shale
    #' fa = rep(c("sand", "shale"), 5)
    #' # length unit
    #' L_unit = "m"
    #' base = 2   # start section at 2 m height
    #' s = as_stratcol(thickness, fa, L_unit, base)
  #'

  x = list(bdry =cumsum(c(base, thickness)),
           fa = facies,
           L_unit = L_unit)
  class(x) = "stratcol"
  return(x)
}
