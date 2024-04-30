get_base = function(s){
  #' @export
  #' @title find base of column
  #'
  #' @param s stratigraphic column
  #'
  #' @returns scalar. position of lowest bed boundary in the stratigraphic column

  UseMethod("get_base")
}

get_base.stratcol = function(s){
  #' @export
  return(s$bdry[1])
}
