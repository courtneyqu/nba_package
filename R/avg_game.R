#' Average Game Function
#'
#' This function calculates the average game for each player in a given year
#' @param year year number
#' @param df dataframe Default to nba
#' @keywords nba
#' @export
#' @examples
#' avg_game(1950)

avg_game <- function(year, df=nba){
  avg <- dplyr::filter(df, Year == year)
  avg <- dplyr::group_by(avg, Player)
  avg <- dplyr::summarise(avg, Avg = mean(G))
  return(avg)
}

#' This is data to be included in my package
#'
#' @name nba
#' @docType data
#' @author Chang Qu \email{cq2203@columbia.edu}
#' @references \url{https://www.kaggle.com/drgilermo/nba-players-stats/data#Seasons_Stats.csv}
#' @keywords data
NULL
