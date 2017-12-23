#' word Cloud Tweets
#'
#` Paint a world cloud graphci with the tweets.
#'@param file A data frame with the attack information.
#'@export
wordCloudTweets <- function(file){
  require("slam")
  require("wordcloud")
  require("RColorBrewer")
  require("tm")
  require("dplyr")

  tweetFrame <- readRDS(file = file) #Sacamos dataFrame guardado en la busqueda

  # cogemos el tweet
  tweet_texto = tweetFrame$text
  ## opcional.... pero importante ... limpiamos el tweet
  # eliminamos las partes que no nos interesan
  tweet_texto = gsub('(RT|via)((?:\\b\\W*@\\w+)+)', '', tweet_texto)
  # eliminamos las personas @..
  tweet_texto = gsub('@\\w+', '', tweet_texto)
  # eliminamos signos de puntuacion
  tweet_texto = gsub('[[:punct:]]', '', tweet_texto)
  # eliminamos numeros..
  tweet_texto = gsub('[[:digit:]]', '', tweet_texto)
  # eliminamos links html
  tweet_texto = gsub('http\\w+', '', tweet_texto)
  # eliminamos espacios innecesarios
  tweet_texto = gsub('[ \t]{2,}', '', tweet_texto)
  # eliminamos caracteres raros..
  tweet_texto = gsub('[^[:graph:]]', ' ', tweet_texto)

  splitData <- unlist(strsplit(tweet_texto, "\\ ")) #spliteamos la frase en palabras sueltas
  #adicionalmente eliminamos conectores comunes....
  stopwords = c("are" ,
                "able" ,
                "about" ,
                "above" ,
                "the" ,
                "a" ,
                "",
                " ",
                "and",
                "has",
                "this" ,
                "our" ,
                "you've" ,
                "for")
  splitData <- removeWords(splitData,stopwords)
  #dataFrameWords <- as.data.frame(splitData)
  #m <- as.matrix(dataFrameWords)
  #numWords <- count(dataFrameWords)

  z <- Corpus(VectorSource(splitData)) #objeto para pintar...

  return(wordcloud(z, max.words = 100, random.order = FALSE))
}

