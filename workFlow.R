create_package("projUtils")
setwd(paste0(getwd(), .Platform$file.sep ,"projUtils"))

# Set up version control infrastructure
setup_gitignore()

# Description of the project
setup_description(
  pkg_name = "projUtils",
  Title = "Creating and Managing R Projects",
  maintainer_name = "Mansour Abdoli. PhD",
  maintainer_email = "mabdoli@fullerton.edu",
  Description = "A package to help me create new project and manage them.")
# Adding license
usethis::use_mit_license()

# If the git is not initialized
usethis::use_git()       # Initialize git
usethis::use_github(private = TRUE, protocol = "ssh")

# Initial commit
system("git add .")
system('git commit -m "Initial commit"')

# I had to set the upstream branch manually
system("git push --set-upstream origin main")

# Create development version
create_dev_version()



example_dependencies <- function() {
  deps <- manage_dependencies()

  # Add basic dependencies
  deps$add("dplyr", "Imports")      # Core dependency
  deps$add("ggplot2", "Imports")    # Visualization
  deps$add("testthat", "Suggests")  # Testing framework

  # Add version constraints
  deps$add_version("dplyr", ">= 1.0.0")
  deps$add_version("ggplot2", ">= 3.3.0")

  # Example of conditional dependency usage
  writeLines(c(
    "if (requireNamespace('ggplot2', quietly = TRUE)) {",
    "  # Code that uses ggplot2",
    "  plot <- ggplot2::ggplot(data, ggplot2::aes(x, y)) +",
    "    ggplot2::geom_point()",
    "} else {",
    "  # Fallback plotting code",
    "  plot <- plot(x, y)",
    "}"
  ), "R/conditional_example.R")
}

if (FALSE) {  # Prevent accidental execution
  # Initialize dependency management
  deps <- manage_dependencies()

  # Add core dependencies
  deps$add("dplyr", "Imports")
  deps$add("ggplot2", "Imports")

  # Add development dependencies
  install_dev_dependencies()

  # Set up repositories
  setup_repositories()

  # Check system dependencies
  check_system_dependencies()

  # Create documentation
  create_dependency_docs()

  # Check for updates
  check_and_update_deps()
}
