regex_in <- function(x,regex = '.'){
    stringr::str_subset(x %in% str_subset(x,regex))
}
