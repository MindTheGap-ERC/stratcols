test_that("facies renaming works", {
  s = as_stratcol(runif(10), rep(c(1,2), 5))
  new_names = c(2,3)
  s2 = rename_facies(s, new_names)
  expect_equal(unique_facies_names(s2), new_names)
})
