test_that("summary works", {
  s = as_stratcol(c(1,2), c(3,4), L_unit = "m")
  expect_snapshot(summary(s))
})
