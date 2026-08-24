# rearrange stratigraphic column

rearrange stratigraphic column

## Usage

``` r
shuffle_col(s, allow_rep = TRUE, max_no_swaps = 10^5)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

- allow_rep:

  logical. Are repetitions in facies allowed?

- max_no_swaps:

  integer. If allow rep is FALSE, what is the number of permutations
  used to shuffle the column?

## Value

a stratcol object, the rearranged stratigraphic column

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("clay", "shale", "sand", "shale"), L_unit = "m")
s = shuffle_col(s, allow_rep = TRUE)
facies_names(s) # returns a random permutation of the facies
#> [1] "shale" "shale" "clay"  "sand" 


```
