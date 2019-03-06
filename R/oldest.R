#' Oldest Player Function
#'
#' This function returns the oldest player in a given year. If multiple player have the same age
#' returns the one with the most game played
#' @param year year number
#' @param df dataframe Default to nba
#' @keywords nba
#' @export
#' @examples
#' oldest(1950)

oldest <- function(year, df=nba){
  old <- dplyr::filter(df, Year == year)
  old <- dplyr::filter(df, Age == max(Age, na.rm = TRUE))
  if (nrow(old) == 1){
    return(dplyr::select(old,Player))
  } else{
    old <- dplyr::filter(old, G == max(G, na.rm = TRUE))
    return( plyr:: select(old, Player))
  }
}

#' This is data to be included in my package
#'
#' @name nba
#' @docType data
#' @author Chang Qu \email{cq2203@columbia.edu}
#' @references \url{https://www.kaggle.com/drgilermo/nba-players-stats/data#Seasons_Stats.csv}
#' @keywords data
NULL
