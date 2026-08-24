# rename facies

replaces old facies names with new ones

## Usage

``` r
rename_facies(s, new_names, old_names = NULL)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

- new_names:

  new facies names

- old_names:

  NULL or a list of old facies names. If NULL, all old facies names will
  be used

## Value

stratigraphic column (a `stratcol` object) with renamed facies

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
s = rename_facies(s, new_names = c("sandy", "shaly"))
```
