setup_rbuildignore <- function() {
  usethis::use_build_ignore(c(
    "^.*\\.Rproj$",
    "^\\.Rproj\\.user$",
    "^data-raw$",
    "^docs$",
    "^\\.travis\\.yml$",
    "^codecov\\.yml$",
    "^_pkgdown\\.yml$",
    "^README\\.Rmd$",
    "^cran-comments\\.md$",
    "^\\.github$"
  ))
}

