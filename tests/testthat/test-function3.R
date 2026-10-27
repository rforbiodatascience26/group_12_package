test_that("split_into_codons splits a sequence into codons", {
  expect_equal(
    split_into_codons("AUGGCUUAA"),
    c("AUG", "GCU", "UAA")
  )
})

test_that("split_into_codons supports a different starting position", {
  expect_equal(
    split_into_codons("AUGGCUUAA", start = 2),
    c("UGG", "CUU")
  )
})

test_that("split_into_codons handles a sequence with one codon", {
  expect_equal(
    split_into_codons("AUG"),
    "AUG"
  )
})
