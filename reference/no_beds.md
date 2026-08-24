# number of beds

number of beds

## Usage

``` r
no_beds(s)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

## Value

integer, the number of beds

## Examples

``` r
s =  as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
no_beds(s) # returns 4
#> [1] 4
```
