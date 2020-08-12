#' Utilization curve data
#'
#' @description A multivariate dataset containing a collection of
#' utilization curves
#' @format A data frame with   60835 rows and 5 variables:
#' \describe{
#' \item{basisid}{Basis ID}
#' \item{id}{ ID should be interpreted as a pair (cpu, session),
#'  where both cpu and session are thought of as coming from
#'  functions and have clear nonlinear dependencies. Most ID are
#'  dense with up to 200 instances, though some are sparse}
#' \item{cpu}{CPU}
#' \item{y}{y}
#' \item{subspaceid}{An identifier classifying the type of shape.
#'  There are 4 types of typical shapes and 4 types of
#'  anomalous shapes.}
#'}
#'
#' @details {As the dataset contains commercially sensitive information,
#' the actual data source is not given here.All labels of product
#' and time are removed for confidentiality.}
#'
#' @author Priyanga Dilini Talagala, Cole Sodja
#'
"utilization_curves"
