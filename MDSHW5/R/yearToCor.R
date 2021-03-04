#' Year to Correlation Function
#'
#' This function allows you to see a correlation plot of NBA stats in any year of choice.
#' @param year Year of interest.
#' @keywords NBA
#' @export
#' @examples
#' cat_function()

yearToCor <- function(year){
  yTCData <- subset(seasons, Year == year)
  yTCData <- dplyr::yTCData %>% select_if(is.numeric)
  return(corrplot::corrplot(cor(yTCData)))
}
