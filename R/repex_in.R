regex_in <- function(x,regex = '.'){
    x %in% str_subset(x,regex)
}
