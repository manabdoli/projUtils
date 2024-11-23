#' Creating the DESCRIPTION file
#' @export
setup_description <- function(pkg_name,
                              Title="What the Package Does (One Line, Title Case)",
                              maintainer_name, maintainer_email,
                              Description = "What the package does (one paragraph).") {
  desc_template <- paste0(
    "Package: ", pkg_name, "\n",
    "Type: Package\n",
    "Title: ", Title,"\n",
    "Version: 0.1.0\n",
    "Authors@R: person('", maintainer_name, "',\n",
    "                  email = '", maintainer_email, "',\n",
    "                  role = c('cre', 'aut'))\n",
    "Description: ", Description, "\n",
    #"License: MIT + file LICENSE\n", # License will be added using usethis::xxx_license()
    "Encoding: UTF-8\n",
    "LazyData: true\n",
    "Roxygen: list(markdown = TRUE)\n",
    "RoxygenNote: 7.1.1\n",
    "Suggests:\n",
    "    testthat (>= 3.0.0),\n",
    "    knitr,\n",
    "    rmarkdown\n",
    "Config/testthat/edition: 3\n",
    "VignetteBuilder: knitr\n"
  )
  writeLines(desc_template, "DESCRIPTION")
}
