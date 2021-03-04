#' Year to Player Function
#'
#' This function allows you to see how many points a player scored in any year of choice.
#' @param year Year of interest.
#' @keywords NBA
#' @export
#' @examples
#' cat_function()

yearToPlayer <- function(year){
  yTPData <- subset(seasons, Year == year)
  playerPoints <- cbind(yTPData$Player[1], yTPData$PTS[1])
  colnames(playerPoints) <- c("Name", "Points Scored")
  return(playerPoints)
}
