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

  #Calculamos el número de Tweets de cada uno de los ataques
  ntweets <- nrow(readRDS(file = file))
  ntweets2 <- nrow(readRDS(file = file2))
  ntweets3 <- nrow(readRDS(file = file3))

  #Definimos las columnas de la gràfica.
  graphic <- matrix(c(ntweets,ntweets2,ntweets3),ncol=3,byrow=TRUE)
  colnames(graphic) <- c("Wannacry", "Petya", "Judy")
  graphic <- as.table(graphic) #Creamos la gràfica.

  #Pintamos la gràfica.
  return(barplot(graphic, main = "Comparacion numero tweets ataques"))
}
