# print stratigraphic column to console

print stratigraphic column to console

## Usage

``` r
# S3 method for class 'stratcol'
print(x, ...)
```

## Arguments

- x:

  stratigraphic column (a `stratcol` object)

- ...:

  other parameters (currently ignored)

## Value

invisible NULL, prints to the console

## See also

[`summary.stratcol()`](https://mindthegap-erc.github.io/stratcols/reference/summary.stratcol.md)
for a summary of a stratigraphic column

## Examples

``` r
s = as_stratcol(c(0.5, 1, 0.3, 0.7), c("sand", "shale", "sand", "shale"), L_unit = "m")
print(s)
#> Stratigraphic column
```
