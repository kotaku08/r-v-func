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


#' conv from a yyyymm vector to tibble of yyyymm, yyyy-mm-dd and 1month later yyyy-mm-dd for make query.
#' @param yyyymm vector of yyyymm eg c("201701", "201702", "201703")
#' @return tibble of yyyymm ,access_time and 1month later access_time
#' @export
vls_access_time_make <- function(yyyymm){
  yyyymmdd <- paste0(yyyymm, "01")
  yyyy_mm_dd_1 <- lubridate::ymd(yyyymmdd)
  yyyy_mm_dd_2 <- yyyy_mm_dd_1 + months(1)
  tibble::data_frame(yyyymm = as.character(yyyymm),
                     access_time1 = as.character(yyyy_mm_dd_1),
                     access_time2 = as.character(yyyy_mm_dd_2))
  #aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
}