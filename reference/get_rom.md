# runs order metric (Burgess 2016)

Determines the run order metric introduced in Burgess (2016),
https://doi.org/10.2110/jsr.2016.10

## Usage

``` r
get_rom(s, strictly = TRUE)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

- strictly:

  logical. Does bed thickness need to be strictly increasing (\>) or not
  (\>=) to be counted as thickening?

## Value

a number, the runs order metric (rom)

## References

Burgess, Peter. 2016. "Identifying Ordered Strata: Evidence, Methods,
and Meaning." Journal of Sedimentary Research.
[doi:10.2110/jsr.2016.10](https://doi.org/10.2110/jsr.2016.10)

## See also

[`get_mom()`](https://mindthegap-erc.github.io/stratcols/reference/get_mom.md)
to get the Markov order metric

## Examples

``` r
#see vignette for an extended example, bootstrapping methods and explanation via
# vignette("stratorder")
s = as_stratcol(thickness = runif(90), facies = rep(c(1,2,3), 30))
plot(s)

get_rom(s) # returns a number, the runs order metric
#> [1] 1.370787
```
