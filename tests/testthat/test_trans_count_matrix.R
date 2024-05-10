test_that("character facies names yield identical results", {
  no_fa = 4 # >2
  s1 = stratcols::as_stratcol(runif(10 * no_fa), rep(1:no_fa, 10))
  s2 = stratcols::rename_facies(s1, as.character(stratcols::facies_names(s1)))

  expect_equal(trans_count_matrix(s1), trans_count_matrix(s2))
})
