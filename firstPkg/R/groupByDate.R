#' Group Dataframe By Date
#'
#' Return the mean value grouped by date.
#' @param data_frame A data.frame object with two columns: date and value.
#' @return Return a tibble data.frame.
#' @seealso \code{\link{group_by}}, \code{\link{summarise}}
#' @export
#' @importFrom dplyr group_by summarise n %>%
groupByDate <- function(data_frame){
  dplyr::group_by(data_frame, date) %>% dplyr::summarise(mean = mean(value), count = dplyr::n())
}
