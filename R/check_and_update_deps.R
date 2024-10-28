check_and_update_deps <- function() {
  # Check for outdated packages
  old <- old.packages()

  if (!is.null(old)) {
    cat("Outdated packages:\n")
    print(old[, c("Package", "Installed", "Available")])

    # Update packages
    update.packages(ask = FALSE)
  } else {
    cat("All packages are up to date.\n")
  }
}
