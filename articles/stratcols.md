# stratcols

``` r

library(stratcols)
```

## Introduction to the stratcols package

`stratcols` is an R package to handle stratigraphic columns.

## Getting started

Stratigraphic columns are constructed using `as_stratcol`:

``` r

thickness = runif(10) #bed thicknesses
facies = rep(c(1,2), 5) # facies codes

s = as_stratcol(thickness = thickness,
                facies = facies)
```

The optional argument `L_unit` can be used to associate a length unit
with the bed thicknesses. The optional argument `base` specifies the
position of the base of the lowest bed.

`is_stratcol` can be used to test if any object is a valid stratigraphic
column:

``` r

is_stratcol(s)
#> [1] TRUE
```

Bed thicknesses can be extracted using `bed_thickness`:

``` r

bed_thickness(s)
#>  [1] 0.080750138 0.834333037 0.600760886 0.157208442 0.007399441 0.466393497
#>  [7] 0.497777389 0.289767245 0.732881987 0.772521511
```

You can extract (unique) facies names as follows:

``` r

facies_names(s)
#>  [1] 1 2 1 2 1 2 1 2 1 2
unique_facies_names(s)
#> [1] 1 2
```

Further functionality includes

``` r

no_beds(s) # number of beds
#> [1] 10
no_facies(s) # number of distinct facies.
#> [1] 2

total_thickness(s) # total thickness of column
#> [1] 4.439794

get_base(s) # lowest bed boundary
#> [1] 0
get_L_unit(s) # length unit of beds
#> NULL

facies_repetitions(s) # do at least two successive beds have identical facies?
#> [1] FALSE
merge_beds(s, mode = "identical facies") # merge successive beds with identical facies
#> Stratigraphic column
```

## Plotting stratigraphic columns

`stratcols` wraps `StratigrapheR` to plot stratigraphic columns. Facies
codes are interpreted as hardness

``` r

plot(s)
```

![Stratigraphic
column](stratcols_files/figure-html/unnamed-chunk-7-1.png)

## Modifying stratigraphic columns

Facies names can be changed using `rename_facies`:

``` r

s2 = rename_facies(s, new_names = c(2,3))
plot(s2)
```

![stratigraphic column with changed facies
codes](stratcols_files/figure-html/unnamed-chunk-8-1.png)

The optional argument `old_names` can be used to replace specific
facies.

You can assign a stratigraphic column a length unit using

``` r

s3 = set_L_unit(s, "m")
get_L_unit(s3)
#> [1] "m"
```

## Further reading

See

``` r

vignette("stratcols_doc")
```

for an explanation of the larger structure of the package and
definitions of the classes.

See

``` r

vignette("stratorder")
```

for available methods to estimate stratigraphic order metrics, such as
the runs order metric (ROM) and the Markov order metric (MOM).
