get_rom = function(s, strictly = TRUE){
  #' @export
  #' @title runs order metric by Burgess (2016)
  #'
  #' @param s stratigraphic column
  #' @param strictly logical. Does bed thickness need to be stricly increasing (>) or not (>=) to be counted as thickening?
  #'
  #' @description
    #' Determines the run order metric introduced by Burgess (2016), https://doi.org/10.2110/jsr.2016.10
    #'
  #'
  #' @returns scalar. The runs order metric (rom)
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
