#' Correlation matrix for numeric variable
#'
#' This function returns the correlation matrix for numeric variables in the nba data set
#' @param year year number
#' @param df dataframe Default to nba
#' @keywords nba
#' @export
#' @examples
#' cor_num(1950)

cor_num <- function(year, df=nba){
  num <- dplyr::select_if(df, is.numeric)
  num <- dplyr::filter(num, Year == 1950)
  num <- dplyr::select_if(num,Negate(anyNA))
  return(cor(num[,-1]))
}

#' This is data to be included in my package
#'
#' @name nba
#' @docType data
#' @author Chang Qu \email{cq2203@columbia.edu}
#' @references \url{https://www.kaggle.com/drgilermo/nba-players-stats/data#Seasons_Stats.csv}
#' @keywords data
NULL
