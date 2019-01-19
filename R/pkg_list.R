#' Get the list of packages
#'
#' @param vec A vector of character values. Refer the relavant information about a package you are looking for.
#'
#' @return tibble. A tibble with a list of packages.
#' @author Jiaxiang Li \email{alex.lijiaxiang@foxmail.com}
#'
#' @import packagefinder
#' @import tibble
#'
#' @seealso download_log
#' @export

pkg_list <-
function(vec){
    packagefinder::findPackage(vec) %>%
    tibble::as_tibble()
    }
