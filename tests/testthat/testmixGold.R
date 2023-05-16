#' Pick the optimal label from candidate labels
#'
#' @details
#' Users need to specify four plausible labels for each topic
#'
#' @param n The number of desired tasks
#' @param text.predict A data frame or matrix containing both the text and the indicator(s)
#' of the model predicted topic(s).
#' @param text.name variable name in `text.predict` that indicates the text
#' @param top1.name variable name in `text.predict` that indicates the top1 model predicted topic
#' @param labels.index The topic index in correspondence with the labels, e.g., c(10, 12, 15).
#' @param candidate.labels A list of vectors containing the user-defined labels assigned to the topics,
#' Must be in the same length and order with `labels.index`.
#' 
#' @export

library(here)
here("data", "R4WSItasktest.rda")
here("data", "goldR4WSItest.rda")


test_that("Test mixGold",{
  allR4WSItasktest <- mixGold(tasks = R4WSItasktest, golds = goldR4WSItest)

  expect_is(allR4WSItasktest, "data.frame")
  expect_is(allR4WSItasktest[,2], "character")
  expect_is(allR4WSItasktest[,3], "character")
  expect_is(allR4WSItasktest[,4], "character")
  expect_is(allR4WSItasktest[,5], "character")
  expect_is(allR4WSItasktest[,6], "character")
  expect_is(allR4WSItasktest[,7], "integer")
  expect_equal(length(allR4WSItasktest$id), length(unique(allR4WSItasktest$id)))
  expect_true(nchar(allR4WSItasktest[nrow(allR4WSItasktest),2]) > 1)
  expect_equal(sum(is.na(allR4WSItasktest)), 0)
  expect_equal(colnames(allR4WSItasktest)[1], "topic")
  expect_equal(colnames(allR4WSItasktest)[2], "doc")
  expect_equal(colnames(allR4WSItasktest)[3], "opt1")
  expect_equal(colnames(allR4WSItasktest)[4], "opt2")
  expect_equal(colnames(allR4WSItasktest)[5], "opt3")
  expect_equal(colnames(allR4WSItasktest)[6], "optcrt")
  expect_equal(colnames(allR4WSItasktest)[7], "id")
  expect_equal(length(unique(allR4WSItasktest[,1])), nrow(masstest[[1]])+1)
  expect_true(("gold" %in% unique(allR4WSItasktest[,1])))
})
