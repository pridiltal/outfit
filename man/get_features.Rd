% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_features.R
\name{get_features}
\alias{get_features}
\title{Extract features from multivariate functional data}
\usage{
get_features(
  data,
  family = "NO",
  df_mu = 5,
  degree_mu = 1,
  df_sig = 4,
  degree_sig = 1
)
}
\arguments{
\item{data}{A multivariate funtional dataset with two columns: id and y}

\item{family}{A gamlss.family object,
which is used to define the distribution and the link functions
of the various parameters. The distribution families supported by
gamlss() can be found in gamlss.family. Default is \code{NO}.}

\item{df_mu}{Degrees of freedom - mu; one can specify df rather
than knots; bs() then chooses
df-degree  knots at suitable quantiles of x
(which will ignore missing values).}

\item{degree_mu}{Degree of the piecewise polynomial-mu; default is 1}

\item{df_sig}{Degrees of freedom - sigma;}

\item{degree_sig}{Degree of the piecewise polynomial-sigma; default is 1}
}
\value{
An object of class features.
}
\description{
This function extract features from
multivariate functional data.
}
