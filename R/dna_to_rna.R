#' Create RNA string from DNA string
#'
#' @param dna_string a DNA sequence
#'
#' @returns RNA sequence (Timin converted to Uracil)
#' @export
#'
#' @examples dna_to_rna("AGGTCAAATT")
dna_to_rna <- function(dna_string){
  rna_string <- gsub("T", "U", dna_string)
  return(rna_string)
}
