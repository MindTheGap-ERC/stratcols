# stratcols

Dealing with stratigraphic columns in R. Currently provides simple wrappers and utility functions.

## Authors

__Niklas Hohmann__  
Utrecht University  
email: n.hohmann [at] uu.nl  
Web page: [uu.nl/staff/NHohmann](https://www.uu.nl/staff/NHHohmann)  
Orcid: [0000-0003-1559-1838](https://orcid.org/0000-0003-1559-1838)

## Installation

First, install the `remotes` package using

```R
install.packages("remotes")
```

Then, run

```R
remotes::install_github(repo = "MindTheGap-ERC/stratcols",
                        ref = "HEAD",
                        dependencies = TRUE,
                        build_vignettes = TRUE)
```

After installation, you can load the package using

```R
library("stratcols")
```

Start by reading the vignette, available via

```R
vignette("stratcols")
```

## License

Apache 2.0, see LICENSE file for details

## Copyright

Copyright 2024 Netherlands eScience Center and Utrecht University

## Funding information

Funded by the European Union (ERC, MindTheGap, StG project no 101041077). Views and opinions expressed are however those of the author(s) only and do not necessarily reflect those of the European Union or the European Research Council. Neither the European Union nor the granting authority can be held responsible for them.
![European Union and European Research Council logos](https://erc.europa.eu/sites/default/files/2023-06/LOGO_ERC-FLAG_FP.png)
