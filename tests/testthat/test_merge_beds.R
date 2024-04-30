test_that("trivial cases with repeated facies are recognized", {
  s = as_stratcol(1,1)
  expect_equal(s, merge_beds(s))

  s = as_stratcol(runif(10), 1:11)
  expect_equal(s, merge_beds(s))
})

test_that("repeated facies are merged", {
  s = as_stratcol(c(1,1), c(1,1))
  expect_equal( merge_beds(s), as_stratcol(2, 1))
})
