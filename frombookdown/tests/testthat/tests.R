# Generated from _main.Rmd: do not edit by hand  
testthat::test_that("do_least_squares() works", {
  set.seed(123)
  n <- 100
  p <- 1
  x <- cbind(1, matrix(rnorm(n*p), n, p))
  beta_star <- c(2, 0.5)
  sigma <- 0.1
  y <- x %*% beta_star + sigma * rnorm(n)
  fit_lm <- lm(y ~ x[, 2])
  # do lm and our function give the same coefficient vector?
  testthat::expect_equal(do_least_squares(y, x),
                         as.numeric(fit_lm$coefficients))
  # do we get the desired error when there is a length mismatch?
  testthat::expect_error(do_least_squares(y[-1], x), "must match")
})

