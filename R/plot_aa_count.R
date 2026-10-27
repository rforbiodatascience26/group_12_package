#' Plotting the counts of unique amino acids
#'
#' @param aa_data A string representing amino acids
#'
#' @returns A plot of the counts of unique amino acids in the given data
#' @export
#'
#' @examples plot_aa_count("PPTTTLQRRN")
plot_aa_count <- function(aa_data){
  unique_aa <- aa_data |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = aa_data, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["AA_data"]] <- rownames(counts)

  aa_counts <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Name_me2, y = Counts, fill = AA_data)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_counts)
}
