# is a valid stratigraphic column?

determines if x is a valid stratcol object

## Usage

``` r
is_stratcol(x)
```

## Arguments

- x:

  stratigraphic column (a `stratcol` object)

## Value

logical - is the object a valid stratcol object?

## See also

[`as_stratcol()`](https://mindthegap-erc.github.io/stratcols/reference/as_stratcol.md)
to define stratcol objects

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
is_stratcol(s) # returns TRUE
#> [1] TRUE
s$fa = NULL # break stratcolumn object
is_stratcol(s) # returns FALSE
#> [1] FALSE
```
