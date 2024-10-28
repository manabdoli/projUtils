#'
create_dependency_docs <- function() {
  # Read current dependencies
  desc <- desc::desc_get_deps()

  # Create markdown documentation
  doc <- c(
    "# Package Dependencies",
    "",
    "## Required Packages",
    "",
    "### Imports",
    paste("*", desc[desc$type == "Imports", "package"]),
    "",
    "### Suggests",
    paste("*", desc[desc$type == "Suggests", "package"]),
    "",
    "### System Requirements",
    "* R version >= 3.5.0",
    "* Python (optional, for Python integration)",
    "* gcc/g++ (for compilation of C++ code)",
    "",
    "## Installation",
    "```r",
    "# Install from CRAN",
    "install.packages('yourpackage')",
    "",
    "# Install development version",
    "remotes::install_github('username/yourpackage')",
    "```"
  )

  writeLines(doc, "dependencies.md")
}
