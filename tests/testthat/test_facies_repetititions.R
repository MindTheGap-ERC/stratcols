test_that("facies repetitions are detected", {
  s = as_stratcol(c(1,1), c(1,2))
  expect_false(facies_repetitions(s))

  s = as_stratcol(c(1,1), c(1,1))
  expect_true(facies_repetitions(s))

  s = as_stratcol(c(1), c(1))
  expect_false(facies_repetitions(s))
})
