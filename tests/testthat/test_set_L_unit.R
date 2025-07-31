test_that("setting length unit works", {
  s = as_stratcol(runif(10), rep(c(1,2), 5))
  L_unit = "m"
  expect_equal(get_L_unit(set_L_unit(s, L_unit)), L_unit)
})
