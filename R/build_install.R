#' Build and Install
#' @export
build_install <- function(clean = FALSE){
  cwd <- getwd()
  on.exit(setwd(cwd))
  prj_path <- usethis::proj_path()
  prj_name <- basename(prj_path)
  setwd(prj_path)
  if(clean){
    setwd(gsub(prj_name, "", prj_path))
    system(paste0("R CMD INSTALL --preclean --no-multiarch --with-keep.source ", prj_name))
    setwd(prj_path)
  } else{
    setwd(gsub(prj_name, "", prj_path))
    system(paste0("R CMD INSTALL --preclean --no-multiarch --with-keep.source ", prj_name))
    setwd(prj_path)
  }
}
