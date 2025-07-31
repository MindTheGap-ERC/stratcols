transition_matrix = function(s){
  #' @export
  #' @title transition frequency matrix from strat. column
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #'
  #' @returns a matrix of S3 class fa_tran_mat (facies transition matrix). Has dimension names "from" and "to", and facies as row/column names.
  #' @seealso [trans_count_matrix()] for the facies transition matrix with raw transition counts
  #'
  #' @seealso [get_mom()] to get the Markov order of the transition matrix

  UseMethod("transition_matrix")
}

transition_matrix.stratcol = function(s){
  #' @export
  #'
  n = stratcols::no_facies(s)
  m = matrix(0, ncol = n, nrow = n)
  fa = stratcols::unique_facies_names(s)
  fa_names = stratcols::facies_names(s)
  no_bed = stratcols::no_beds(s)
  dimnames(m) = list("to" = fa, "from" = fa)
  for (l in seq_len(no_bed-1)){
    i = fa_names[l]
    j = fa_names[l+1]
    m[j,i] = m[ j, i] + 1
  }
  for (k in seq_len(n)){
    m[k,] = m[k,] /sum(m[k,])
  }
  class(m) = "fa_tran_mat_p"
  return(m)

}
