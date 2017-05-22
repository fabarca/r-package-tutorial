library(firstPkg)
context("Group By Date")

date_vec = rep(as.Date('2017-01-01') + 0:8, 4)
value_vec = sample(1:36*4, 36)
example_df = data.frame(date = date_vec, value = value_vec)

test_that("Date is well grouped", {
  result_df = firstPkg::groupByDate(example_df)
  
  expect_equal(result_df$date, as.Date('2017-01-01') + 0:8)
  expect_equal(sum(result_df$count), length(date_vec))
})

test_that("Mean is well calculated", {
  result_df = firstPkg::groupByDate(example_df)
  
  expect_equal(mean(result_df$mean), mean(value_vec))
})
