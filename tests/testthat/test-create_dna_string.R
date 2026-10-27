test_that("an input of 0 will give an empty string", {
  expect_equal(create_dna_string(0), "")
})

test_that("the length of the output is the same as expected", {
  expect_equal(nchar(create_dna_string(10)), 10)
})
