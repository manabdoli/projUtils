#'
create_feature_branch <- function(feature_name) {
  system(paste0("git checkout -b feature/", feature_name))
}
