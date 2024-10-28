#'
merge_feature <- function(feature_name) {
  system("git checkout main")
  system(paste0("git merge feature/", feature_name))
}
