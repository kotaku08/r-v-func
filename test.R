#' make "yyyymm" sequence vector.
#' @param from start month of target sequence eg "201701"
#' @param to end month of target sequence eg "201701"
#' @param format option to change output format instead of "yyyymm"
#' @return vector
vls_yyyymm_range <- function(from, to, format = "%Y%m"){
  start <- lubridate::ymd(paste0(from,"01"))
  end <- lubridate::ymd(paste0(to,"01"))
  format(seq(start, end, "month"), format)
}