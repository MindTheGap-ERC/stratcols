summary.stratcol = function(object, ...){
  #' @export
  #'
  #' @title summarize stratigraphic column
  #'
  #' @param object stratigraphic column (a `stratcol` object)
  #' @param ... further parameters (currently ignored)
  #'
  #' @returns invisible NULL. prints to the console
  #'
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m", base = 2)
    #' summary(s)
    #'
  #'

  cat("Stratigraphic column \n")
  cat(paste0("No of beds: ", no_beds.stratcol(object), "\n"))
  cat(paste0("No of facies: ", no_facies.stratcol(object), "\n"))
  cat(paste0("Total thickness: ", total_thickness.stratcol(object), " ", get_L_unit(object), "\n"))
  cat(paste0("Base of column: ", get_base(object), " ", get_L_unit(object), "\n"))

}
