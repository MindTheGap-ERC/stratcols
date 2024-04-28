transition_matrix = function(s){
  #' @export
  #' @title estimate transition matrix from strat column
  #'
  #' @param s stratcol object
  #'
  #' @returns a matrix
  #'
  n = length(unique(s$fa))
  m = matrix(0, ncol = n, nrow = n)
  for (l in seq_len(length(s$fa)-1)){
    i = s$fa[l]
    j = s$fa[l+1]
    if (i != j){
      m[j,i] = m[j,i] + 1
    }
  }
  for (k in seq_len(n)){
    m[k,] = m[k,] /sum(m[k,])
  }
  return(m)

}
