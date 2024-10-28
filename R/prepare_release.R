prepare_release <- function(version) {
  # Update NEWS.md
  usethis::edit_file("NEWS.md")

  # Update version number
  desc::desc_set_version(version)

  # Run tests
  devtools::test()

  # Build documentation
  devtools::document()

  # Check package
  devtools::check()
}
