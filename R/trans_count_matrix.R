trans_count_matrix = function(s, ...){
  #' @export
  #'
  #' @title facies transition count matrix
  #'
  #' @param s stratigraphic column (a `stratcol` object)
  #' @param ... other parameters. currently ignored
  #'
  #' @returns a transition count matrix of S3 class `fa_tran_mat_c`
  #'
  #' @description
    #' determines the number of facies transitions in a stratigraphic column and stores the output in a matrix
    #'
    #' @examples
        #' #stratigraphic column with 90 beds
        #' s = as_stratcol(thickness = runif(90), facies = rep(c(1,2,3), 30))
        #' m = trans_count_matrix(s)
    #' @seealso [transition_matrix()] for the facies transition matrix with transition frequencies
    #'
  UseMethod("trans_count_matrix")
}

trans_count_matrix.stratcol = function(s, ...){
  #' @export
  x = s
  n = stratcols::no_facies(x)
  m = matrix(0, ncol = n, nrow = n)
  fa = stratcols::unique_facies_names(x)
  fa_names = stratcols::facies_names(x)
  no_bed = stratcols::no_beds(x)
  dimnames(m) = list("to" = fa, "from" = fa)
  for (l in seq_len(no_bed-1)){
    i = which(fa_names[l] == fa)
    j = which(fa_names[l+1] == fa)
    m[j,i] = m[ j, i] + 1
  }
  class(m) = "fa_tran_mat_c"
  return(m)

}
