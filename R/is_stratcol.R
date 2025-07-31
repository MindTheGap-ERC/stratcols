is_stratcol = function(x){
  #' @export
  #'
  #' @title is a valid stratigraphic column?
  #'
  #' @param x stratigraphic column (a `stratcol` object)
  #'
  #' @description
    #' determines if x is a valid stratcol object
    #'
  #'
  #' @seealso [as_stratcol()] to define stratcol objects
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
    #' is_stratcol(s) # returns TRUE
    #' s$fa = NULL # break stratcolumn object
    #' is_stratcol(s) # returns FALSE
    #'

  if (! inherits(x, "stratcol")){ return(FALSE)}

  if (length(x$bdry) < 2) { return(FALSE)}

  if ( ! (length(x$bdry) == length(x$fa) + 1))  { return( FALSE) }

  if (! is.numeric(x$bdry)) {return(FALSE)}

  if ( is.unsorted(x$bdry, strictly = TRUE)) { return(FALSE)}

  return(TRUE)

}
