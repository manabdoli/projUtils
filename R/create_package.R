#' Creating a new package
#' This creates a project and opens it in a new R instance
#' @export
create_package <- function(path, add2repo=TRUE) {
  usethis::create_package(path)
  usethis::use_git()       # Initialize git
  if(add2repo)
    usethis::use_github()    # Optional: Set up GitHub repository

  # Set up package infrastructure
  usethis::use_mit_license()    # Or another license
  usethis::use_readme_md()      # Create README.md
  usethis::use_news_md()        # Create NEWS.md for tracking changes
  usethis::use_package_doc()    # Package-level documentation
  usethis::use_testthat()       # Set up testing infrastructure
  #usethis::use_travis()         # Optional: Set up Travis CI
  #usethis::use_coverage()       # Optional: Set up test coverage

  # Create standard directories
  dir.create("inst", showWarnings = FALSE)
  dir.create("data", showWarnings = FALSE)
}
