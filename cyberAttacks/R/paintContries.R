#' Paint countries
#'
#` Paint the tweets country on a gprahic.
#'@param file A data frame with the attack information.
#'@export
paintContries <- function(file){
  require("twitteR")
  require("RCurl")
  require("dismo")
  require("maps")
  require("ggplot2")
  require("XML")
  require("plyr")
  require("stringr")

  #consumer_key <- 'PUZuo6k75lZYGQBRiwlJLc9Og'
  #consumer_secret <- '4My1RZHZgbYvaA5XBIAcJ11dqpgQtDOEecHR3LoZFcouCr1nL7'
  #access_token <- '938134932383260672-vkIaphVYLXb2tnnpKFJU3calS4pE4hu'
  #access_secret <- 'ZNscFMCMQX9ercbLgN16ROrsFULA0GX04k0BMgS7VvnAQ'
  consumer_key <- 'xTtWssMDK0lbL3snyh07qc6Tq'
  consumer_secret <- 'uhFU4p4XAijNMaKXml9dqatYN09AhWKU2XgNFgDkYIPEMMjafe'
  access_token <- '942082776689528832-p8iBl60ho1aYTNmwOFxgOIKF1TrSeLo'
  access_secret <- 'kadqQQ0YqP5iGzgp9MkfP4pDRM6rDXrL9N7khPlPqcgv5'

  setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret) #accesso a Twitter
  1 ##para confirmar la autenticacion
  tweetFrame <- readRDS(file = file) #Sacamos dataFrame guardado en la busqueda

  userInfo <- lookupUsers(tweetFrame$screenName)  # buscamos informacion sobre los usuarios
  userFrame <- twListToDF(userInfo)  # Convertimos a DataFrame

  locatedUsers <- !is.na(userFrame$location)  # Guardamos la informacion relativa a la localitzacion de los usuarios
  locations <- geocode(userFrame$location[locatedUsers])  # API para conseguir la localizacion aproximada de los usuarios a partir de latitud i longitud.
  with(locations, plot(longitude, latitude))

  # cogemos el tweet
  localitzacio = locations$interpretedPlace
  deleteNA = is.na(localitzacio) #buscamos NA
  localitzacioNoNA = localitzacio[!deleteNA] #eliminamos NA
  dtm <- as.data.frame(localitzacioNoNA) #pasamos a dataframe
  dtmCountrys <- word(localitzacioNoNA,-1) #cogemos la ultima palabra que corresponde al pais
  dtmCountrys[dtmCountrys=="Kingdom"]<-"UK" #devuelve tanto United Kingdom como UK por lo tanto unificamos a UK
  dtmCountrys

  dtmNumCountrys <- data.frame(table(unlist(strsplit(tolower(dtmCountrys), " "))))
  return(pie(dtmNumCountrys$Freq, dtmNumCountrys$Var1, main="Tweets/Country"))
}
