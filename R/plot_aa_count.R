#' Plotting the counts of unique amino acids
#'
#' @param aa_data A string representing amino acids
#'
#' @returns A plot of the counts of unique amino acids in the given data
#' @export
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @examples plot_aa_count("PPTTTLQRRN")
plot_aa_count <- function(aa_data){
  # extracts unique amino acids
  unique_aa <- aa_data |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # creates a data frame with the counts of unique amino acids
  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = aa_data, pattern =  amino_acid)) |>
    as.data.frame()

  # renames column and rows
  colnames(counts) <- c("Counts")
  counts[["AA_data"]] <- rownames(counts)

  # creates the plot
  aa_counts <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AA_data, y = Counts, fill = AA_data)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_counts)
}
