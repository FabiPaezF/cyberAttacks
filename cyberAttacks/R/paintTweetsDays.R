#' Tweets Days
#'
#` Paint the tweet number of eahc day on a graphic.
#'@param file A data frame with the attack information.
#'@export
paintTweetsDays <- function(file){
  require("magrittr")
  require("dplyr")
  require("ggplot2")

  tweetFrame <- readRDS(file = file) #Sacamos dataFrame guardado en la busqueda
  tweetFrame$created <- as.Date(as.POSIXct(trunc(tweetFrame$created, "days"), 'GMT')) #modificamos el valor de la columna created para que eliminar la parte correspondiente a horas minutos y segundos

  tweetFrame %>%
  count(created, sort = TRUE) %>% #cogemos la columna created
  filter(n > 100) %>%
  mutate(created = reorder(created, n)) %>%
  ggplot(aes(created, n)) + #dibujamos el grafico
  geom_col() +
  xlab(NULL) +
  return(coord_flip()) #ejes coordenadas
}
