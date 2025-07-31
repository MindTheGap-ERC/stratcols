total_thickness = function(s, ...){
  #' @export
  #'
  #' @title get total thickness
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #' @param ... other parameters (currently ignored)
  #'
  #' @returns scalar, total thickness of stratigraphic column
  #'
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
    #' total_thickness(s) # returns 2.5
    #'
  #'
  UseMethod("total_thickness")
}

total_thickness.stratcol = function(s, ...){
  #' @export
  #'
  #' @title get total thickness of stratigraphic column
  #'
  #' @param s stratigraphic column
  #' @param ... other parameters
  #'
  #' @returns scalar, thickness of column
  #'
  th = sum(bed_thickness(s))
  return(th)
}
