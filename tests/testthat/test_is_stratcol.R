test_that("basic cases are caught", {
  s = as_stratcol(runif(10), rep(c(1,2), 5))
  expect_true(is_stratcol(s))
  expect_false(is_stratcol(1))
  expect_s3_class(s, "stratcol")
})

test_that("too short columns are caught", {
  s = as_stratcol(runif(10), rep(c(1,2), 5))
  s$bdry= 1
  expect_false(is_stratcol(s))
})

test_that("no of boundaries and facies matches", {
  s = as_stratcol(runif(10), rep(c(1,2), 5))
  s$bdry = c(1,2)
  expect_false(is_stratcol(s))
})

test_that("boundaries must be numeric", {
  s = as_stratcol(runif(10), rep(c(1,2), 5))
  s$bdry  = as.character(s$bdry)
  expect_false(is_stratcol(s))
})

test_that("boundaries must be strictly increasing",{
  s = as_stratcol(runif(10), rep(c(1,2), 5))
  s$bdry = rev(s$bdry)
  expect_false(is_stratcol(s))
})
