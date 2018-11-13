#' Get these packages' download counts
#'
#' @param vec A vector of character values. Refer the relavant information about a package you are looking for.
#'
#' @return \code{data.frame}. A data.frame with monthly download counts of these packages.
#' @author Jiaxiang Li \email{alex.lijiaxiang@foxmail.com}
#'
#' @import dplyr
#' @import dlstats
#'
#' @seealso download_by_month
#' @export

download_log <-
function(vec){
    pkg_list(vec) %>%
    dplyr::rename_all(tolower) %>%
    dplyr::arrange(desc(score)) %>%
    dplyr::distinct(name) %>%
    # head(100) %>%
    .$name %>%
    # 可以插入 vector，所以不需要map
    dlstats::cran_stats()
}
