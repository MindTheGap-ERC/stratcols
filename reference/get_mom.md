# Markov order metric (Burgess 2016)

Markov order metric (Burgess 2016)

## Usage

``` r
get_mom(m)
```

## Arguments

- m:

  a facies transition matrix

## Value

scalar, the Markov order metric introduced in Burgess (2016),
https://doi.org/10.2110/jsr.2016.10

## References

Burgess, Peter. 2016. "Identifying Ordered Strata: Evidence, Methods,
and Meaning." Journal of Sedimentary Research.
[doi:10.2110/jsr.2016.10](https://doi.org/10.2110/jsr.2016.10)

## See also

[`transition_matrix()`](https://mindthegap-erc.github.io/stratcols/reference/transition_matrix.md)
to estimate the facies transition matrix from a stratigraphic column,
[`get_rom()`](https://mindthegap-erc.github.io/stratcols/reference/get_rom.md)
to get the runs order metric

## Examples

``` r
#see vignette for an extended example and explanation via
# vignette("stratorder")
# uniform bed thickness, ordered facies
s = as_stratcol(thickness = runif(30), fa = rep(c(1,2,3), 10))
s = shuffle_col(s, allow_rep = TRUE) # randomize order of beds, allowing  for repetitions
plot(s)

s_merged = merge_beds(s, mode = "identical facies")
plot(s_merged)

s_ord_names = order_facies_names(s_merged)
plot(s_ord_names)

m = transition_matrix(s_ord_names)
get_mom(m)
#> [1] 0.03571429
```
