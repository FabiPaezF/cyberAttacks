#' Geocode World Map
#'
#' Paint the tweets geogrhapic codes information on a global map.
#'@param file A data frame with the attack information.
#'@export
paintWorldMap <- function(file){
  require(twitteR)
  require(RCurl)
  require(dismo)
  require(maps)
  require(ggplot2)
  require(httr)
  require(XML)

  consumer_key <- 'PUZuo6k75lZYGQBRiwlJLc9Og'
  consumer_secret <- '4My1RZHZgbYvaA5XBIAcJ11dqpgQtDOEecHR3LoZFcouCr1nL7'
  access_token <- '938134932383260672-vkIaphVYLXb2tnnpKFJU3calS4pE4hu'
  access_secret <- 'ZNscFMCMQX9ercbLgN16ROrsFULA0GX04k0BMgS7VvnAQ'

  setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret) #Accesso a Twitter
  1 #Para confirmar la autenticacion

  tweetFrame <- readRDS(file = file) #Sacamos dataFrame guardado en la busqueda

  userInfo <- lookupUsers(tweetFrame$screenName)  # Buscamos informacion sobre los usuarios
  userFrame <- twListToDF(userInfo)  # Convertimos a DataFrame

  locatedUsers <- !is.na(userFrame$location)  # Guardamos la informacion relativa a la localitzacion de los usuarios

  locations <- geocode(userFrame$location[locatedUsers])  # API para conseguir la localizacion aproximada de los usuarios a partir de latitud i longitud.
  with(locations, plot(longitude, latitude))

  worldMap <- map_data("world")  # Mapamundi

  zp1 <- ggplot(worldMap) # Pintamos el mapa
  #tratamos el mapa
  zp1 <- zp1 + geom_path(aes(x = long, y = lat, group = group), colour = gray(2/3), lwd = 1/3)
  # Afegim un punt per usuari
  zp1 <- zp1 + geom_point(data = locations, aes(x = longitude, y = latitude), colour = "RED", alpha = 1/2, size = 1/3)
  zp1 <- zp1 + coord_equal() # permite conservar la relacion altura ancho (proporciones)
  zp1 <- zp1 + theme_minimal()  # quitar información no útil del fondo
  print(zp1)
}
