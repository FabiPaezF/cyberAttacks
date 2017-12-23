#' Tweets Comparation
#'
#` Paint the the 5 attack tweets comparation
#'@param file A data frame with the attack information.
#'@param file2 A data frame with the attack 2 information.
#'@param file3 A data frame with the attack 3 information.
#'@export
paintTweetsComparation <- function(file, file2, file3){
  require(RCurl)
  require(dismo)
  require(httr)
  require(XML)

  ntweets <- nrow(readRDS(file = file))
  ntweets2 <- nrow(readRDS(file = file2))
  ntweets3 <- nrow(readRDS(file = file3))

  graphic <- matrix(c(ntweets,ntweets2,ntweets3),ncol=3,byrow=TRUE)
  colnames(graphic) <- c("Wannacry", "Petya", "Judy")
  graphic <- as.table(graphic)
  #graphic

  return(barplot(graphic, main = "Comparación nº tweets ataques"))
}
