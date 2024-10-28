setup_repositories <- function() {
  # Add multiple repository sources
  options(
    repos = c(
      CRAN = "https://cloud.r-project.org",
      BioCsoft = "https://bioconductor.org/packages/release/bioc",
      BioCann = "https://bioconductor.org/packages/release/data/annotation",
      BioCexp = "https://bioconductor.org/packages/release/data/experiment"
    )
  )
}
