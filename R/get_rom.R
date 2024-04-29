get_rom = function(s){
  #' @export
  #' @title runs order metric by Burgess (2016)
  #'
  #' @param s stratigraphic column
  #'
  no_beds = stratcols::no_beds(s)
  I = rep(NA, no_beds()-1)
  D = I
  thickness = stratcols::bed_thickness(s)
  I_counter = 0
  D_counter = 0
  for (i in seq_len(no_beds - 1)){
    is_increasing = thickness[i+1] > thickness[i]
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
