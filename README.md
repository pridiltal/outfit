
<!-- README.md is generated from README.Rmd. Please edit that file -->

# outfit

<!-- badges: start -->

[![Project Status: WIP ? Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Build
Status](https://travis-ci.org/pridiltal/outfit.svg?branch=master)](https://travis-ci.org/pridiltal/outfit)
[![Licence](https://img.shields.io/badge/licence-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/outfit)](https://cran.r-project.org/web/packages/outfit/index.html)
[![](http://cranlogs.r-pkg.org/badges/outfit)](http://cran.rstudio.com/web/packages/outfit/index.html)

[![Last-changedate](https://img.shields.io/badge/last%20change-2020--08--12-yellowgreen.svg)](/commits/master)
<!-- badges: end -->

The goal of outfit is to detect outliers in mutivariate functional data

## Installation

You can install the released version of outfit from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("outfit")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("pridiltal/outfit")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(outfit)
## basic example code
head(utilization_curves)
#>   basisid id         cpu   y             subspaceid
#> 1       1  1 0.001007227 129 1 constant_scale_shape
#> 2       1  1 0.002784417 131 1 constant_scale_shape
#> 3       1  1 0.003465359 105 1 constant_scale_shape
#> 4       1  1 0.005992975  96 1 constant_scale_shape
#> 5       1  1 0.010085913  97 1 constant_scale_shape
#> 6       1  1 0.013900140 113 1 constant_scale_shape
```
