get_mom = function(m){
  #' @title determine markov order metric by Burgess (2016)
  #'
  #' @param m transition matrix
   ext_matrix = rbind(m,m)
   no_facies = ncol(m)
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
