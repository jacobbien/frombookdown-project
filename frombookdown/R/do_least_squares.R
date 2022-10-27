# Generated from _main.Rmd: do not edit by hand

#' Get the OLS solution
#' 
#' @param y our response, which is an n-vector
#' @param X our data matrix, which is n by p
#' @export
do_least_squares <- function(y, X) {
  if(nrow(X) != length(y))
    stop("The number of rows of X must match the length of y.")
  as.numeric(solve(crossprod(X), crossprod(X, y)))
}
