#' Create DNA string
#'
#' @param dna_length the length of the output dna string
#'
#' @returns a string of given length with a random combination of the letters "A", "T", "G", and "C"
#' @export
#'
#' @examples create_dna_string(10)
create_dna_string <- function(dna_length){
  random_amino_acids <- sample(c("A", "T", "G", "C"), size = dna_length, replace = TRUE)
  dna_string <- paste0(random_amino_acids, collapse = "")
  return(dna_string)
}
