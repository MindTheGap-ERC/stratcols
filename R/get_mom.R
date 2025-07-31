get_mom = function(m){
  #' @export
  #' @title Markov order metric by (Burgess 2016)
  #'
  #' @param m a facies transition matrix
  #'
  #' @returns scalar, the Markov order metric introduced in Burgess (2016), https://doi.org/10.2110/jsr.2016.10
  #'
  #' @seealso [transition_matrix()] to estimate the facies transition matrix from a stratigraphic column, [get_rom()] to get the runs order metric
  #'
  #' @references  Burgess, Peter. 2016. "Identifying Ordered Strata: Evidence, Methods, and Meaning." Journal of Sedimentary Research. \doi{10.2110/jsr.2016.10}
  #'
  #' @examples
    #' #see vignette for an extended example and explanation via
    #' # vignette("stratorder")
    #'# uniform bed thickness, ordered facies
    #' s = as_stratcol(thickness = runif(30), fa = rep(c(1,2,3), 10))
    #' s = shuffle_col(s, allow_rep = TRUE) # randomize order of beds, allowing  for repetitions
    #' plot(s)
    #' s_merged = merge_beds(s, mode = "identical facies")
    #' plot(s_merged)
    #' s_ord_names = order_facies_names(s_merged)
    #' plot(s_ord_names)
    #' m = transition_matrix(s_ord_names)
    #' get_mom(m)

  UseMethod("get_mom")
}

get_mom.fa_tran_mat_p = function(m){
  #' @export
  #'
  ext_matrix = rbind(m,m)
  no_facies = ncol(m)

  if (no_facies < 3){
    stop("need more than 2 facies to determine markov order metric")
  }
  max = -Inf
  min = Inf
  for (i in 1:(no_facies - 1)){

    diag = ext_matrix[col(ext_matrix) - row(ext_matrix)  + i == 0]
    dsum = sum(diag)/no_facies
    min = min(min, dsum)
    max = max(max, dsum)


  }
  return( max - min)
}
