#'
#'
setup_gitignore <- function() {
  usethis::use_git_ignore(c(
    ".Rproj.user",
    ".Rhistory",
    ".RData",
    ".Ruserdata",
    "*.Rproj",
    ".DS_Store",    # For Mac users
    "inst/doc",
    "docs/",
    "*.tar.gz",
    "*.Rcheck/",
    "*.rdb",
    "*.rdx",
    "*.dll",
    "*.o",
    "*.so",
    "src/*.o",
    "src/*.so",
    "src/*.dll"
  ))
}
