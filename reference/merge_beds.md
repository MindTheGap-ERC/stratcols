# merge beds in stratigraphic column

merge beds in stratigraphic column

## Usage

``` r
merge_beds(s, mode = "identical facies", ...)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

- mode:

  character. criteria for merging. currently only "identical facies" is
  implemented

- ...:

  other parameters. currently not used

## Value

a stratigraphic column (a `stratcol` object)

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "sand", "shale", "shale"), L_unit = "m")
merge_beds(s, mode = "identical facies")
#> Stratigraphic column
facies = facies_names(s) # returns "sand" "shale" as the two sandy beds are merged
```
