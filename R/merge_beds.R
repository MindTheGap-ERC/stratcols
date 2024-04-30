merge_beds = function(s, mode = "identical facies", ...){
  #' @export
  #' @title merge beds in stratigraphic column
  #'
  #' @param s stratigraphic column
  #' @param mode character. criteria for merging. currently onlye "identical facies" is implemented
  #' @param ... other paratmeters. currently not used

  UseMethod("merge_beds")
}

merge_beds.stratcol = function(s, mode = "identical facies", ...){
#' @export

if (mode == "identical facies"){
  nb = no_beds(s)
  if (nb == 1){
    return(s)
  }
  if (!facies_repetitions(s)){
    return(s)
  }
  fa = facies_names.stratcol(s)
  ti = bed_thickness.stratcol(s)
  fa_new = fa[1]
  ti_new = ti[1]
  for (i in 1:(nb -1)){
    id_facies = fa[i] == fa[i+1]
    if (!id_facies){ # facies are not identical
      fa_new = c(fa_new, fa[i+1])
      ti_new = c(ti_new, ti[i+1])
    }
    if (id_facies){ # if facies are identical
      ti_new[length(ti_new)] = ti_new[length(ti_new)] + ti[i+1] # add up thickness
    }
  }
  s_out = as_stratcol(ti_new, fa_new, get_L_unit.stratcol(s), base = get_base.stratcol(s))
  return(s_out)
}
  stop("unknown mode")
}
