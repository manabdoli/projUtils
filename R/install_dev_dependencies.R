install_dev_dependencies <- function() {
  # Install common development tools
  devtools::install_deps(dependencies = TRUE)

  # Additional development packages
  dev_packages <- c(
    "testthat",
    "roxygen2",
    "covr",
    "devtools",
    "usethis",
    "pkgdown",
    "styler",
    "lintr"
  )

  installed <- rownames(installed.packages())
  to_install <- dev_packages[!dev_packages %in% installed]

  if (length(to_install) > 0) {
    install.packages(to_install)
  }
}
