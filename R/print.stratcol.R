print.stratcol = function(x, ...){
  #' @export
  #'
  #' @title print stratigraphic column to console
  #'
  #' @param x stratigraphic column (a `stratcol` object)
  #' @param ... other parameters (currently ignored)
  #'
  #' @returns invisible NULL, prints to the console
  #'
  #' @seealso [summary.stratcol()] for a summary of a stratigraphic column
  #'
  #' @examples
    #' s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
    #' print(s)
    #'
  cat("Stratigraphic column\n")
  return(invisible())
}
