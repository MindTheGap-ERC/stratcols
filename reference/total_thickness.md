# get total thickness

get total thickness

## Usage

``` r
total_thickness(s, ...)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

- ...:

  other parameters (currently ignored)

## Value

scalar, total thickness of stratigraphic column

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
total_thickness(s) # returns 2.5
#> [1] 2.5

```
