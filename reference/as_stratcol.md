# define stratigraphic column

defines an S3 object `stratcol` representing a stratigraphic column.
Does not check for the validity of the constructed object. For this, use
`is_stratcol`

## Usage

``` r
as_stratcol(thickness, facies, L_unit = NULL, base = 0)
```

## Arguments

- thickness:

  numeric vector, bed thicknesses

- facies:

  vector, facies code of beds (numeric or character)

- L_unit:

  length unit of bed thickness

- base:

  position of lowest bed boundary

## Value

an object of S3 class `stratcol`

## See also

[`is_stratcol()`](https://mindthegap-erc.github.io/stratcols/reference/is_stratcol.md)
to check for validity

## Examples

``` r
n_beds = 10
# 10 beds with thickness between 0.1 and 1 m
thickness = runif(n_beds, 0.1, 1)
# alternations of sand and shale
fa = rep(c("sand", "shale"), 5)
# length unit
L_unit = "m"
base = 2   # start section at 2 m height
s = as_stratcol(thickness, fa, L_unit, base)
```
