# order facies names according to appearance

enumerates the facies according to their order of appearance (counting
from the bottom of the section). To be applied to stratigraphic columns
before get_mom is called. Replaces the facies codes by integer numbers

## Usage

``` r
order_facies_names(s)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

## Value

a stratigraphic column (a `stratcol` object)

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "clay"), L_unit = "m")
s = order_facies_names(s)
plot(s)

```
