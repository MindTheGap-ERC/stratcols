get_mom = function(m){
  #' @export
  #' @title determine markov order metric by Burgess (2016)
  #'
  #' @param m facies transition matrix
  #'
  #' @returns scalar, the matric order metric

  UseMethod("get_mom")
}

get_mom.fa_tran_mat = function(m){
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
