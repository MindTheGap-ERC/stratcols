# facies transition count matrix

determines the number of facies transitions in a stratigraphic column
and stores the output in a matrix

## Usage

``` r
trans_count_matrix(s, ...)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

- ...:

  other parameters. currently ignored

## Value

a transition count matrix of S3 class `fa_tran_mat_c`

## See also

[`transition_matrix()`](https://mindthegap-erc.github.io/stratcols/reference/transition_matrix.md)
for the facies transition matrix with transition frequencies

## Examples

``` r
#stratigraphic column with 90 beds
s = as_stratcol(thickness = runif(90), facies = rep(c(1,2,3), 30))
m = trans_count_matrix(s)
```
