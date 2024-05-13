test_that("basic cases are caught", {
  s = as_stratcol(runif(10), rep(c(1,2), 5))
  expect_true(is_stratcol(s))
  expect_false(is_stratcol(1))
})
