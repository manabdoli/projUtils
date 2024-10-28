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
usethis::use_github()

# Initial commit
system("git add .")
system('git commit -m "Initial commit"')

# Create development version
create_dev_version()
