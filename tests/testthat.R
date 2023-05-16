Sys.setenv("R_TESTS" = "")
library(testthat)
library(validateIt)
if (!requireNamespace("here", quietly = TRUE)) {
  install.packages("here")
}

library(here)
test_check("validateIt")
