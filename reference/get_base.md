# find base of stratigraphic column

find base of stratigraphic column

## Usage

``` r
get_base(s)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

## Value

A number, position of lowest bed boundary in the stratigraphic column

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m", base = 2)
get_base(s) # returns 2
#> [1] 2
```
