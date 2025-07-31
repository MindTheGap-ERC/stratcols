test_that("correct length unit is returned", {
  expect_null(get_L_unit(as_stratcol(c(1,1), c(1,1))))
  expect_equal(get_L_unit(as_stratcol(c(1,1), c(1,1), L_unit = "m")), "m")
})
