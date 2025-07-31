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

test_that("non-identical facies run smoothly", {
  expect_no_error(merge_beds(as_stratcol(thickness = c(1,2,1), facies = c(1,2,2))))
})

test_that("error is thrown for unknown mode", {
  s = as_stratcol(c(1,1), c(1,1))
  expect_error(merge_beds(s, mode = "foo"))
})
