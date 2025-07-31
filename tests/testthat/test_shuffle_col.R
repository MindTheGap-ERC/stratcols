test_that("allow_rep == TRUE throws an error", {
  s = as_stratcol(runif(10), rep(c(1,2), 5))
  expect_error(shuffle_col(s, allow_rep = FALSE))
})

test_that("runs without errors", {
  s = as_stratcol(runif(10), rep(c(1,2), 5))
  expect_no_error(shuffle_col(s))
})
