#' Building Documentations
#' @export
build_docs <- function(){
  devtools::document(roclets = c('rd', 'collate', 'namespace'))
}
