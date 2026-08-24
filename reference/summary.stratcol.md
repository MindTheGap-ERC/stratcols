# summarize stratigraphic column

summarize stratigraphic column

## Usage

``` r
# S3 method for class 'stratcol'
summary(object, ...)
```

## Arguments

- object:

  stratigraphic column (a `stratcol` object)

- ...:

  further parameters (currently ignored)

## Value

invisible NULL. prints to the console

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m", base = 2)
summary(s)
#> Stratigraphic column 
#> No of beds: 4
#> No of facies: 2
#> Total thickness: 2.5 m
#> Base of column: 2 m

```
