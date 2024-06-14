test_that("lib_summary fails appropriately", {
  expect_error(lib_summary(sizes = "foo"), "not interpretable as logical")
})

test_that("sizes argument works", {
  res <- lib_summary(sizes = TRUE)
  expect_equal(names(res), c("Library", "n_packages", "lib_size"))
  expect_type(res$lib_size, "double")
})
