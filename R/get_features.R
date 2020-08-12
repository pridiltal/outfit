globalVariables(c("NO"))
#' Extract features from multivariate functional data
#'
#' @description This function extract features from
#' multivariate functional data.
#' @param data A multivariate funtional dataset with two columns: id and y
#' @param family 	A gamlss.family object,
#' which is used to define the distribution and the link functions
#' of the various parameters. The distribution families supported by
#' gamlss() can be found in gamlss.family. Default is `NO`.
#' @param degree_mu Degree of the piecewise polynomial-mu; default is 1
#' @param df_mu Degrees of freedom - mu; one can specify df rather
#' than knots; bs() then chooses
#'  df-degree  knots at suitable quantiles of x
#'  (which will ignore missing values).
#' @param degree_sig Degree of the piecewise polynomial-sigma; default is 1
#' @param df_sig Degrees of freedom - sigma;
#' @return An object of class features.
#' @export
#' @importFrom gamlss gamlss
#' @importFrom splines bs
#' @importFrom dplyr filter
#' @importFrom purrr map
#' @importFrom stats coef
#' @importFrom magrittr "%>%"
#'
get_features <- function(data, family= NO, df_mu=5, degree_mu= 1,
                         df_sig=4, degree_sig= 1){

  calc_bs_features <- function(i) {
    # Filter series
    d_y <- data %>%
      dplyr::filter(data[,1] == i)
    y <- d_y[,2]
    x <- 1:length(y)
    # B-spline for both location and scale
    fit_g <- gamlss::gamlss( y ~ splines::bs(x, df=df_mu, degree=degree_mu),
                             sigma.formula =~ splines::bs(x, df=df_sig, degree = degree_sig),
                             family = family)
    #coefficients of basis for location (log-scale)
    loc_f<- stats::coef(fit_g)[-1]

    #coefficients of basis for scale (log-scale)
    scale_f<- stats::coef(fit_g, what='sigma')[-1]
    features <- c(i, loc_f, scale_f ) %>% unname()
    names(features) <- c("id", paste("f", 1:(length(features)-1), sep =""))
    #print(i)
    return(features)

  }

  G_features <- purrr::map(unique(data[,1]), calc_bs_features)

  features <- data.frame(matrix(unlist(G_features),
                             nrow = length(G_features),
                             byrow = T
  ))

  colnames(features) <-c( "id", paste("f", 1:(df_mu + df_sig), sep =""))
  return(features)

}
