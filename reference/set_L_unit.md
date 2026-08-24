# set length unit of strat column

set length unit of strat column

## Usage

``` r
set_L_unit(s, L_unit)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

- L_unit:

  string or NULL, the length unit

## Value

a stratigraphic column (`stratcol` object) with length unit added

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"))
s = set_L_unit(s, "m")
get_L_unit(s) # returns "m"
#> [1] "m"
```
