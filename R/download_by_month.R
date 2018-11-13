#' Get the monthly average download counts
#'
#' @param vec A vector of character values. Refer the relavant information about a package you are looking for.
#'
#' @return \code{data.frame}. A data.frame with the average monthly download counts of these packages.
#' @author Jiaxiang Li \email{alex.lijiaxiang@foxmail.com}
#'
#' @import dplyr
#' @import dlstats
#'
#' @seealso download_trend
#' @export

download_by_month <-
function(vec){
    download_log(vec) %>%
    dplyr::group_by(package) %>%
    dplyr::summarize(downloads = mean(downloads)) %>%
    dplyr::arrange(dplyr::desc(downloads))
}
