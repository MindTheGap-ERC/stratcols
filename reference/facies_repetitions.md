# have successive beds identical facies?

have successive beds identical facies?

## Usage

``` r
facies_repetitions(s)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

## Value

TRUE or FALSE. Do at least two successive beds have the same facies?

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
facies_repetitions(s) # returns FALSE
#> [1] FALSE
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "sand", "shale", "shale"), L_unit = "m")
facies_repetitions(s) # returns TRUE
#> [1] TRUE
```
