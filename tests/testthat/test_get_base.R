test_that("correct base is returned", {
  expect_equal(get_base(as_stratcol(c(1,1), c(1,1), base = 2)), 2)
})
