#'
create_release_tag <- function(version) {
  system(paste0('git tag -a v', version, ' -m "Release version ', version, '"'))
  system("git push --tags")
}
