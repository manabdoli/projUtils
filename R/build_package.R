#' Build Package
#'
build_package <- function(binary=FALSE){
  build_docs()
  if(binary){
    devtools::build(binary = TRUE, args = c('--preclean'))
  } else{
    devtools::build()
  }
}
