is_stratcol = function(x){
  #' @export
  #'
  #' @title is valid stratigraphic column?
  #'
  #' @param x object to examine
  #'
  #' @description
    #' examines if x is a valid stratcol object
    #'
  #'
  #' @seealso [as_stratcol()] to define stratcol objects
  #'

  if (! inherits(x, "stratcol")){ return(FALSE)}

  if (length(x$bdry) < 2) { return(FALSE)}

  if ( ! (length(x$bdry) == length(x$fa) + 1))  { return( FALSE) }

  return(TRUE)

}
