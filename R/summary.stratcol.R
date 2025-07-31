summary.stratcol = function(object, ...){
  #' @export
  #'
  #' @title summary of stratigraphic column
  #'
  #' @param object stratigraphic column
  #' @param ... further parameters (ignored)
  #'
  #' @returns invisible NULL. prints to the console
  #'

  cat("Stratigraphic column \n")
  cat(paste0("No of beds: ", no_beds.stratcol(object), "\n"))
  cat(paste0("No of facies: ", no_facies.stratcol(object), "\n"))
  cat(paste0("Total thickness: ", total_thickness.stratcol(object), " ", get_L_unit(object), "\n"))
  cat(paste0("Base of column: ", get_base(object), " ", get_L_unit(object), "\n"))

}
