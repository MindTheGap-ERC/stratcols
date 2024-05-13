test_that("produces correct class", {
  s = as_stratcol(runif(10), rep(c(1,2), 2))
  expect_equal(class(s), "stratcol")
})
