# basic plotting of stratigraphic columns

wraps around
[`StratigrapheR::litholog()`](https://rdrr.io/pkg/StratigrapheR/man/litholog.html)
to plot a stratigraphic column. The beds are plotted as polygons, the
boundaries as horizontal lines.

## Usage

``` r
# S3 method for class 'stratcol'
plot(x, ...)
```

## Arguments

- x:

  stratigraphic column (a `stratcol` object)

- ...:

  further plotting options. ignored

## Value

invisible NULL

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c(1,2,3,1.5), L_unit = "m")
# facies codes are used as hardness
plot(s)
```
