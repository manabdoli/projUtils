#'
increment_version <- function(type = c("patch", "minor", "major")) {
  type <- match.arg(type)
  usethis::use_version(type)
}
