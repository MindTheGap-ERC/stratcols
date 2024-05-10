total_thickness = function(x, ...){
  #' @export
  #'
  #' @title get total thickness
  #'
  #' @param x object
  #' @param ... other parameters
  #'
  #' @returns scalar. total thickness
  #'
  UseMethod("total_thickness")
}

total_thickness.stratcol = function(x, ...){
  #' @export
  #'
  #' @title get total thickness of stratigraphic column
  #'
  #' @param x stratigraphic column
  #' @param ... other parameters
  #'
  #' @returns scalar, thickness of column
  #'
  th = sum(bed_thickness(x))
  return(th)
}
