# transition frequency matrix from strat. column

transition frequency matrix from strat. column

## Usage

``` r
transition_matrix(s)
```

## Arguments

- s:

  stratigraphic column (a `stratcol` object)

## Value

a matrix of S3 class fa_tran_mat (facies transition matrix). Has
dimension names "from" and "to", and facies as row/column names.

## See also

[`trans_count_matrix()`](https://mindthegap-erc.github.io/stratcols/reference/trans_count_matrix.md)
for the facies transition matrix with raw transition counts

[`get_mom()`](https://mindthegap-erc.github.io/stratcols/reference/get_mom.md)
to get the Markov order of the transition matrix
