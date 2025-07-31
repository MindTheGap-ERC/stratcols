get_rom = function(s, strictly = TRUE){
  #' @export
  #' @title runs order metric (Burgess 2016)
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #' @param strictly logical. Does bed thickness need to be strictly increasing (>) or not (>=) to be counted as thickening?
  #'
  #' @description
    #' Determines the run order metric introduced in Burgess (2016), https://doi.org/10.2110/jsr.2016.10
    #'
  #'
  #' @returns a number, the runs order metric (rom)
  #'
  #' @seealso [get_mom()] to get the Markov order metric
  #'
  #' @examples
    #' #see vignette for an extended example, bootstrapping methods and explanation via
    #' # vignette("stratorder")
    #' s = as_stratcol(thickness = runif(90), facies = rep(c(1,2,3), 30))
    #' plot(s)
    #' get_rom(s) # returns a number, the runs order metric
    #'
  no_beds = stratcols::no_beds(s)
  I = rep(NA, no_beds-1)
  D = I
  thickness = stratcols::bed_thickness(s)
  I_counter = 0
  D_counter = 0
  for (i in seq_len(no_beds - 1)){
    if (strictly){
      is_increasing = thickness[i+1] > thickness[i]
    }
    if (!strictly){
      is_increasing = thickness[i+1] >= thickness[i]
    }

    if (is_increasing){
      I_counter = I_counter + 1
      D_counter = 0
    }
    if (!is_increasing){
      I_counter = 0
      D_counter = D_counter + 1
    }
    I[i] = I_counter
    D[i] = D_counter
  }

  r = sum(I)/length(I) + sum(D)/length(D)

  return(r)
}
