# extract length unit from stratigraphic columns

extract length unit from stratigraphic columns

## Usage

``` r
get_L_unit(s)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

## Value

string or NULL, the length unit of the stratigraphic column

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
get_L_unit(s) # returns "m"
#> [1] "m"
```
