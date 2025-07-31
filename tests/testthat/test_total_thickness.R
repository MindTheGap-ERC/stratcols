test_that("total thickness is correct", {
  th = runif(10)
  s = as_stratcol(th, rep(c(1,2), 5))
  expect_equal(sum(th), total_thickness(s))
})
