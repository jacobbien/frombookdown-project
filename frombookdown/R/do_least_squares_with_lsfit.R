# Generated from _main.Rmd: do not edit by hand

#' Get the OLS solution using `lsfit()`
#' 
#' @param y our response, which is an n-vector
#' @param X our data matrix, which is n by p
#' @export
do_least_squares_with_lsfit <- function(y, X) {
  fit <- stats::lsfit(x = X, y = y, intercept = FALSE)
  return(as.numeric(fit$coefficients))
}
