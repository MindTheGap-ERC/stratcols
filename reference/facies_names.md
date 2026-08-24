# extract facies names from stratigraphic column

extract facies names from stratigraphic column

## Usage

``` r
facies_names(s)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

## Value

vector of facies names for each bed

## See also

[`unique_facies_names()`](https://mindthegap-erc.github.io/stratcols/reference/unique_facies_names.md)
to get a list of unique facies names

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
facies = facies_names(s)
print(facies)
#> [1] "sand"  "shale" "sand"  "shale"
```
