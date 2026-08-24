# return unique facies names from a stratigraphic column

return unique facies names from a stratigraphic column

## Usage

``` r
unique_facies_names(s)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

## Value

a vector of unique facies names in the stratigraphic column

## See also

[`facies_names()`](https://mindthegap-erc.github.io/stratcols/reference/facies_names.md)
to get facies names for each bed

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
unique_facies = unique_facies_names(s) # returns c("sand", "shale")
```
