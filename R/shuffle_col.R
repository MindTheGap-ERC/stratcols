shuffle_col = function(s, allow_rep = TRUE){
  #' @export
  #' @title rearrange stratigraphic column
  #'
  #' @param s a stratcol object
  #' @param allow_rep logical. are repetitions in facies allowed?
  #'
  #' @returns a stratcol object
  #'
  #'
  UseMethod("shuffle_col")
}

shuffle_col.stratcol = function(s, allow_rep = TRUE){
  #' @export
  #'
  no_beds = stratcols::no_beds(s)
  thickness = stratcols::bed_thickness(s)
  facies = stratcols::facies_names(s)
  if (allow_rep == TRUE){
    perm = sample.int(no_beds)
    new_thickness = thickness[perm]
    new_fa = facies[perm]
    s2 = as_stratcol(thickness = new_thickness,
                     facies = new_fa,
                     L_unit = s$L_unit,
                     base = s$bdry[1])
    return(s2)
  }
  if (allow_rep == FALSE){
    stop("not implemented yet")
    # max_steps = 10* length(s$fa)
    # thickness = diff(s$bdry)
    # fa = s$fa
    # for (i in seq_len(max_steps)){
    #   perm = sample.int(length(s$fa), 2)
    #   if (fa[perm[1]] != fa[perm[2]]){
    #     fa[perm] = fa[rev(perm)]
    #     thickness[perm] = thickness[rev(perm)]
    #   }
    # }
    # s2 = as_stratcol(thickness = thickness,
    #                  facies = fa,
    #                  L_unit = s$L_unit,
    #                  base = s$bdry[1])
    # return(s2)
  }
}
