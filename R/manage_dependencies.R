manage_dependencies <- function(pkg_path = ".") {
  # Initialize description file if it doesn't exist
  if (!file.exists(file.path(pkg_path, "DESCRIPTION"))) {
    stop("DESCRIPTION file not found. Are you in a package directory?")
  }

  # Function to add a package dependency
  add_dependency <- function(pkg_name, type = c("Imports", "Suggests", "Depends", "Enhances", "LinkingTo")) {
    type <- match.arg(type)
    usethis::use_package(pkg_name, type = type)
  }

  # Function to add version constraints
  add_version_constraint <- function(pkg_name, version_constraint) {
    desc::desc_set_dep(pkg_name, version = version_constraint)
  }

  # Function to remove a package dependency
  remove_dependency <- function(pkg_name) {
    desc::desc_del_dep(pkg_name)
  }

  # Return functions in a list
  list(
    add = add_dependency,
    add_version = add_version_constraint,
    remove = remove_dependency
  )
}
