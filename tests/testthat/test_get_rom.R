test_that("results match for tickening and thinning sections", {
  no_beds = 11
  no_transitions = no_beds - 1
  s = stratcols::as_stratcol(thickness = seq_len(no_beds), facies = seq_len(no_beds))
  expect_equal(get_rom(s), sum(seq_len(no_transitions))/(no_transitions))

  s = stratcols::as_stratcol(thickness = rev(seq_len(no_beds)), facies = seq_len(no_beds))
  expect_equal(get_rom(s), sum(seq_len(no_transitions))/(no_transitions))

})

test_that("results match for alternating bed thicknesses", {
  no_beds = 11
  no_transitions = no_beds - 1
  s = stratcols::as_stratcol(thickness = rep(c(1,2), no_beds)[seq_len(no_beds)],
                  facies = rep(1, no_beds))
  expect_equal(get_rom(s), 1)
})
