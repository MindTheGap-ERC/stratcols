# extract bed thicknesses

extracts bed thicknesses from stratigraphic column

## Usage

``` r
bed_thickness(s)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

## Value

a numeric vector of bed thicknesses

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
thickness = bed_thickness(s)
hist(thickness, main = "Bed thickness", xlab = paste0("Thickness (m)"))


```
