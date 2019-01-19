#' Put regular expression on a string and output T/F
#'
#' @param x Character. A column of character.
#' @param regex Character. The regular expression rule defined.
#'
#' @return Logical. A column of logical values.
#' @author Jiaxiang Li \email{alex.lijiaxiang@foxmail.com}
#'
#' @import stringr
#'
#' @seealso str_subset
#' @export

regex_in <- function(x,regex = '.'){
    x %in% stringr::str_subset(x,regex)
}
