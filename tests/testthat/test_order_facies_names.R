test_that("ordering of facies names works", {
  fa_names = rep(c(1,2), 5)
  s = as_stratcol(runif(10), fa_names)
  expect_equal(facies_names(order_facies_names(s)), fa_names)
  fa_names2 = rep(rev(c(1,2)), 5)
  s = as_stratcol(runif(10), fa_names2)
  expect_equal(facies_names(order_facies_names(s)), fa_names)
})
