get_rom = function(s){
  #' @title runs order metric by Burgess (2016)
  #'
  #' @param s stratigraphic column
  #'
  I = rep(NA, length(s$fa)-1)
  D = I
  thickness = diff(s$bdry)
  I_counter = 0
  D_counter = 0
  for (i in seq_len(length(thickness) - 1)){
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
