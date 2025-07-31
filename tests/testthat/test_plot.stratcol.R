test_that("plot works",{
  s = as_stratcol(c(1,2), c(1,2))
  f = function() plot(s)
  expect_doppelganger(title = "base plot", fig = f)
})
