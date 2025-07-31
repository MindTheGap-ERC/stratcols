get_base = function(s){
  #' @export
  #' @title find base of stratigraphic column
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #'
  #' @returns A number, position of lowest bed boundary in the stratigraphic column
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m", base = 2)
    #' get_base(s) # returns 2

  UseMethod("get_base")
}

get_base.stratcol = function(s){
  #' @export
  return(s$bdry[1])
}
