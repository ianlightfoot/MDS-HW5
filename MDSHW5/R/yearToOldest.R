#' Year to Oldest Player Function
#'
#' This function allows you to see the older NBA player in any year of choice.
#' @param year Year of interest.
#' @keywords NBA
#' @export
#' @examples
#' cat_function()

yearToOldest <- function(year){
  yTOData <- subset(seasons, Year == year)
  oldest <- subset(yTOData, Age == max(yTOData$Age))
  return(oldest$Player[1])
}
