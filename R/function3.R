#' Split a nucleotide sequence into codons
#'
#' Splits a nucleotide sequence into consecutive groups of three characters.
#'
#' @param sequence A character string containing the nucleotide sequence.
#' @param start The position at which to start splitting the sequence.
#' @return A character vector containing the codons.
#' @examples
#' split_into_codons("AUGGCUUAA")
#' split_into_codons("ATGCCCTAA")
#' split_into_codons("AUGGCUUAA", start = 2)
#' @export
split_into_codons <- function(sequence, start = 1) {
  sequence_length <- nchar(sequence)
  codons <- substring(
    sequence,
    first = seq(from = start, to = sequence_length - 2, by = 3),
    last = seq(from = start + 2, to = sequence_length, by = 3)
  )
  return(codons)
}
