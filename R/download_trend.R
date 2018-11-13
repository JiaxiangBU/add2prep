#' Get the trend of the download counts
#'
#' @param vec A vector of character values. Refer the relavant information about a package you are looking for.
#'
#' @return \code{ggplot2}.
#' @author Jiaxiang Li \email{alex.lijiaxiang@foxmail.com}
#'
#' @import dplyr
#' @import ggplot2
#'
#' @seealso download_by_month
#' @export

download_trend <-
function(vec){
    download_log <- download_log(vec)
    download_by_month <- download_by_month(vec)
    download_log %>%
    dplyr::filter(year(end) >= 2017) %>%
    dplyr::filter(package %in% download_by_month[1:10,]$package) %>%
    dplyr::mutate(is_high = package %in% download_by_month[1:5,]$package) %>%
    ggplot2::ggplot(aes(x=end,y=downloads,col=package)) +
    ggplot2::geom_line() +
    ggplot2::facet_wrap(~is_high,scales = 'free_y')
}
