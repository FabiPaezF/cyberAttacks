
<!-- rnb-text-begin -->

---
title: "Informe Practica - GRUPO C"
author: "Fabi Paez - Moris Davitashvili - Pedro Galindo"
date: "Diciembre de 2017"
output: 
  html_document:
    toc: yes
  html_notebook:
    number_sections: yes
    theme: spacelab
    toc: yes
    toc_float: no
---


<!-- aqui declaro las funciones  -->


<!-- funcion paintContries -->


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


<!-- funcion paintTweetsDays -->


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- funcion paintWorldMap 


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->

-->

<!-- funcion searchTweets -->


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- funcion wordCloudTweets -->


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


<!-- fin declaracion funciones -->


<!-- rnb-text-end -->



<!-- rnb-text-begin -->



<!-- rnb-text-end -->



<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



## 1. Definir pregunta

El objetivo del presente trabajo es analizar cuál es la relación entre algunos de los ciberataques más importantes que se han producido en los últimos años y su repercusión en las redes sociales. En este trabajo nos centraremos en Twitter.


### Twitter

Twitter es un servicio de microblogging, con sede en San Francisco, California. 

La red ha ganado popularidad mundial y se estima que tiene más de 500 millones de usuarios, generando 65 millones de tweets al día y maneja más de 800 000 peticiones de búsqueda diarias. Ha sido denominado como el "SMS de Internet".

La red permite enviar mensajes de texto plano de corta longitud, con un máximo de 280 caracteres (originalmente 140), llamados tweets, que se muestran en la página principal del usuario. Los usuarios pueden suscribirse a los tweets de otros usuarios  – a esto se le llama "seguir" y a los usuarios abonados se les llama "seguidores", "followers" y a veces tweeps ('Twitter' + 'peeps', seguidores novatos que aún no han hecho muchos tweets). Por defecto, los mensajes son públicos, pudiendo difundirse privadamente mostrándolos únicamente a unos seguidores determinados.

En la actualidad, Twitter factura más de 2.500 millones de dólares anuales y tiene un valor en bolsa superior a los 10.000 millones de dólares.


### Conocimiento de los riesgos por parte de los usuarios

La gente suele ser consciente de los riesgos existentes en su día a día. Por ejemplo, todo el mundo tiene un mínimo conocimiento de seguridad viaria o recibe una información básica sobre riesgos laborales en el desarrollo de su actividad profesional.

Sin embargo, es sorprendente que actualmente no se haga la misma incidencia sobre los potenciales riesgos de los usuarios cuando utilizan cualquier dispositivo tecnológico. Existe una gran ignorancia sobre los riesgos que un mal uso pueden suponer, por ejemplo, para la actividad de una empresa. Todos conocemos casos de empresas que han tenido que suspender temporalmente su actividad por un ciberataque o casos en que información extremadamente sensible ha sido sustraída.

El presente trabajo pretende asimismo ver si la concienciación de los usuarios sobre los riesgos de los ciberataques ha evolucionado. Este análisis lo realizaremos estudiando diversos ataques ocurridos en los últimos años. Dado que el presente trabajo se limita a unos casos concretos, solamente podremos determinar si existe una tendencia.


### Obtención de datos
Los datos utilizados para el análisis han sido extraidos de la API de Twitter. La API de Twitter dispone de multiples métodos para extraer información de los tweets de los usuarios. En nuestro caso, hemos usado la función search() para buscar los tweets relacionados con diferentes ataques cybernéticos  correspondientes a los años 2015, 2016 y 2017.

Esta busqueda ha sido limitada al no disponer de una cuenta premium del servicio. Además, a lo largo del proceso nos hemos dado cuenta de ciertas limitaciones que han condicionado los resultados. La API gratuita solo dispone de los tweets de los últimos días. Por otro lado, debido al poco tiempo para relizar la práctica, hemos tenido que limitar la cantidad de información al tardar mucho los procesos de obtención de gráficso implementados por la gran cantidad de datos.

### Ciberataques referenciados

Los ciberataques que hemos tomado como referencia para realizar el trabajo son los siguientes: WannaCry, DDoS Playstation, Judy y Petya.


# 2. Creación de código y análisis de los datos

## 2.1 Aplicando el código que hemos desarrollado:

+	API Twitter - Accedemos a Twitter con la función setup_twitter_oauth mediante claves generadas una vez realizado el proceso de registro de un nuevo usuario.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjpbImNvbnN1bWVyX2tleSA8LSAnUFVadW82azc1bFpZR1FCUml3bEpMYzlPZyciLCJjb25zdW1lcl9zZWNyZXQgPC0gJzRNeTFSWkhaZ2JZdmFBNVhCSUFjSjExZHFwZ1F0RE9FZWNIUjNMb1pGY291Q3Ixbkw3JyIsImFjY2Vzc190b2tlbiA8LSAnOTM4MTM0OTMyMzgzMjYwNjcyLXZrSWFwaFZZTFhiMnRubnBLRkpVM2NhbFM0cEU0aHUnIiwiYWNjZXNzX3NlY3JldCA8LSAnWk5zY0ZNQ01RWDllcmNiTGdOMTZST3JzRlVMQTBHWDA0azBCTWdTN1Z2bkFRJyIsIiIsInNldHVwX3R3aXR0ZXJfb2F1dGgoY29uc3VtZXJfa2V5LCBjb25zdW1lcl9zZWNyZXQsIGFjY2Vzc190b2tlbiwgYWNjZXNzX3NlY3JldCkgI2FjY2Vzc28gYSBUd2l0dGVyIiwiMSAjI3BhcmEgY29uZmlybWFyIGxhIGF1dGVudGljYWNpb24iXX0= -->

```r
consumer_key <- 'PUZuo6k75lZYGQBRiwlJLc9Og'
consumer_secret <- '4My1RZHZgbYvaA5XBIAcJ11dqpgQtDOEecHR3LoZFcouCr1nL7'
access_token <- '938134932383260672-vkIaphVYLXb2tnnpKFJU3calS4pE4hu'
access_secret <- 'ZNscFMCMQX9ercbLgN16ROrsFULA0GX04k0BMgS7VvnAQ'

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret) #accesso a Twitter
1 ##para confirmar la autenticacion
```



<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## 2.2 Metodos
### 2.2.1 Search Tweets

+	Buscamos los Tweets que contengan la palabra contenida en la variable "name".
+ Realizamos un bucle mediante la sentencia for, con el objetivo de realizar varias busquedas y guardar esta información de manera ordenada.
+ Como resultado de la ejecución de este fragmento de código obtenemos un documento con nombre "nombreAtaque.rds". La extensión .rds nos permite guardar y posteriormente recuperar el dataFrame tal y como se habia guardado.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjpbInNlYXJjaFR3ZWV0cyA8LSBmdW5jdGlvbihuYW1lKXsiLCIgIHJlcXVpcmUodHdpdHRlUikiLCIgIHJlcXVpcmUoUkN1cmwpIiwiIiwiICAiLCIgIGx0dyA8LSBsaXN0KCkiLCIgIGZvciAoeCBpbiAxOjEwMCl7IiwiICAgIHNlYXJjaFJlc3VsdHMgPC0gc2VhcmNoVHdpdHRlcihuYW1lLCBzaW5jZT0nMjAxNy0wNS0wNycsIHNpbmNlSUQ9eCo1MDAwLCBuPTUwMDApIiwiICAgIGx0d1tbeF1dIDwtIHR3TGlzdFRvREYoc2VhcmNoUmVzdWx0cykiLCIgIH0iLCIgIGRmLnR3IDwtIHBseXI6OmxkcGx5KGx0dykiLCIgICNub21lc3R3PC1kZi50dyAlPiUgZmlsdGVyKGlzUmV0d2VldCA9PSBGQUxTRSkiLCIgIHNhdmVSRFMoZGYudHcsIGZpbGUgPSBuYW1lICsgXCIucmRzXCIpIiwifSJdfQ== -->

```r
searchTweets <- function(name){
  require(twitteR)
  require(RCurl)

  
  ltw <- list()
  for (x in 1:100){
    searchResults <- searchTwitter(name, since='2017-05-07', sinceID=x*5000, n=5000)
    ltw[[x]] <- twListToDF(searchResults)
  }
  df.tw <- plyr::ldply(ltw)
  #nomestw<-df.tw %>% filter(isRetweet == FALSE)
  saveRDS(df.tw, file = name + ".rds")
}
```



<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



### 2.2.2 Paint Countries

+ Recuperamos el dataFrame guardado en el fichero .rds.
+ Buscamos informacion sobre los usuarios.
+ Convertimos esta nueva información a DataFrame.
+ Guardamos la informacion relativa a la localitzacion de los usuarios.
+ Utilizando el metodo geocode de ggplot2 podemos conseguir localización aproximada de los usuarios a partir de la Latitud, Longitud.
+ Empezamos con el proceso de limpieza de los paises. Primero eliminando los NA.
+ Seguidamente nos quedamos con los paises.
+ Devuelve tanto nombre largo (ej. United Kingdom) como abreviatura/nombre corto (ej. UK) por lo tanto unificamos a abreviatura (UK).
+ Creamos un gràfico circular que representa como se ha dividido el número de tweets en los paises.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjpbInBhaW50Q29udHJpZXMgPC0gZnVuY3Rpb24oZmlsZSl7IiwiICByZXF1aXJlKFwidHdpdHRlUlwiKSIsIiAgcmVxdWlyZShcIlJDdXJsXCIpIiwiICByZXF1aXJlKFwiZGlzbW9cIikiLCIgIHJlcXVpcmUoXCJtYXBzXCIpIiwiICByZXF1aXJlKFwiZ2dwbG90MlwiKSIsIiAgcmVxdWlyZShcIlhNTFwiKSIsIiAgcmVxdWlyZShcInBseXJcIikiLCIgIHJlcXVpcmUoXCJzdHJpbmdyXCIpIiwiIiwiICIsIiAgdHdlZXRGcmFtZSA8LSByZWFkUkRTKGZpbGUgPSBmaWxlKSAjU2FjYW1vcyBkYXRhRnJhbWUgZ3VhcmRhZG8gZW4gbGEgYnVzcXVlZGEiLCIiLCIgIHVzZXJJbmZvIDwtIGxvb2t1cFVzZXJzKHR3ZWV0RnJhbWUkc2NyZWVuTmFtZSkgICMgYnVzY2Ftb3MgaW5mb3JtYWNpb24gc29icmUgbG9zIHVzdWFyaW9zIiwiICB1c2VyRnJhbWUgPC0gdHdMaXN0VG9ERih1c2VySW5mbykgICMgQ29udmVydGltb3MgYSBEYXRhRnJhbWUiLCIiLCIgIGxvY2F0ZWRVc2VycyA8LSAhaXMubmEodXNlckZyYW1lJGxvY2F0aW9uKSAgIyBHdWFyZGFtb3MgbGEgaW5mb3JtYWNpb24gcmVsYXRpdmEgYSBsYSBsb2NhbGl0emFjaW9uIGRlIGxvcyB1c3VhcmlvcyIsIiAgbG9jYXRpb25zIDwtIGdlb2NvZGUodXNlckZyYW1lJGxvY2F0aW9uW2xvY2F0ZWRVc2Vyc10pICAjIEFQSSBwYXJhIGNvbnNlZ3VpciBsYSBsb2NhbGl6YWNpb24gYXByb3hpbWFkYSBkZSBsb3MgdXN1YXJpb3MgYSBwYXJ0aXIgZGUgbGF0aXR1ZCBpIGxvbmdpdHVkLiIsIiAgd2l0aChsb2NhdGlvbnMsIHBsb3QobG9uZ2l0dWRlLCBsYXRpdHVkZSkpIiwiIiwiICAjIGNvZ2Vtb3MgZWwgdHdlZXQiLCIgIGxvY2FsaXR6YWNpbyA9IGxvY2F0aW9ucyRpbnRlcnByZXRlZFBsYWNlIiwiICBkZWxldGVOQSA9IGlzLm5hKGxvY2FsaXR6YWNpbykgI2J1c2NhbW9zIE5BIiwiICBsb2NhbGl0emFjaW9Ob05BID0gbG9jYWxpdHphY2lvWyFkZWxldGVOQV0gI2VsaW1pbmFtb3MgTkEiLCIgIGR0bSA8LSBhcy5kYXRhLmZyYW1lKGxvY2FsaXR6YWNpb05vTkEpICNwYXNhbW9zIGEgZGF0YWZyYW1lIiwiICBkdG1Db3VudHJ5cyA8LSB3b3JkKGxvY2FsaXR6YWNpb05vTkEsLTEpICNjb2dlbW9zIGxhIHVsdGltYSBwYWxhYnJhIHF1ZSBjb3JyZXNwb25kZSBhbCBwYWlzIiwiICBkdG1Db3VudHJ5c1tkdG1Db3VudHJ5cz09XCJLaW5nZG9tXCJdPC1cIlVLXCIgI2RldnVlbHZlIHRhbnRvIFVuaXRlZCBLaW5nZG9tIGNvbW8gVUsgcG9yIGxvIHRhbnRvIHVuaWZpY2Ftb3MgYSBVSyIsIiAgZHRtQ291bnRyeXMiLCIiLCIgIGR0bU51bUNvdW50cnlzIDwtIGRhdGEuZnJhbWUodGFibGUodW5saXN0KHN0cnNwbGl0KHRvbG93ZXIoZHRtQ291bnRyeXMpLCBcIiBcIikpKSkiLCIgIHJldHVybihwaWUoZHRtTnVtQ291bnRyeXMkRnJlcSwgZHRtTnVtQ291bnRyeXMkVmFyMSwgbWFpbj1cIlR3ZWV0cy9Db3VudHJ5XCIpKSIsIn0iXX0= -->

```r
paintContries <- function(file){
  require("twitteR")
  require("RCurl")
  require("dismo")
  require("maps")
  require("ggplot2")
  require("XML")
  require("plyr")
  require("stringr")

 
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
```



<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



### 2.2.3 Paint Tweets Days

+ Recuperamos el dataFrame guardado en el fichero .rds.
+ Modificamos el valor de la columna created para que eliminar la parte correspondiente a horas minutos y segundos
+ Recogemos la columna created
+ Dibujamos el grafico
+ Como resultado tenemos un grafico con el numero de tweets de cada dia



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjpbInBhaW50VHdlZXRzRGF5cyA8LSBmdW5jdGlvbihmaWxlKXsiLCIgIHJlcXVpcmUoXCJtYWdyaXR0clwiKSIsIiAgcmVxdWlyZShcImRwbHlyXCIpIiwiICByZXF1aXJlKFwiZ2dwbG90MlwiKSIsIiIsIiAgdHdlZXRGcmFtZSA8LSByZWFkUkRTKGZpbGUgPSBmaWxlKSAjU2FjYW1vcyBkYXRhRnJhbWUgZ3VhcmRhZG8gZW4gbGEgYnVzcXVlZGEiLCIgIHR3ZWV0RnJhbWUkY3JlYXRlZCA8LSBhcy5EYXRlKGFzLlBPU0lYY3QodHJ1bmModHdlZXRGcmFtZSRjcmVhdGVkLCBcImRheXNcIiksICdHTVQnKSkgI21vZGlmaWNhbW9zIGVsIHZhbG9yIGRlIGxhIGNvbHVtbmEgY3JlYXRlZCBwYXJhIHF1ZSBlbGltaW5hciBsYSBwYXJ0ZSBjb3JyZXNwb25kaWVudGUgYSBob3JhcyBtaW51dG9zIHkgc2VndW5kb3MiLCIiLCIgIHR3ZWV0RnJhbWUgJT4lIiwiICBjb3VudChjcmVhdGVkLCBzb3J0ID0gVFJVRSkgJT4lICNjb2dlbW9zIGxhIGNvbHVtbmEgY3JlYXRlZCIsIiAgZmlsdGVyKG4gPiAxMDApICU+JSIsIiAgbXV0YXRlKGNyZWF0ZWQgPSByZW9yZGVyKGNyZWF0ZWQsIG4pKSAlPiUiLCIgIGdncGxvdChhZXMoY3JlYXRlZCwgbikpICsgI2RpYnVqYW1vcyBlbCBncmFmaWNvIiwiICBnZW9tX2NvbCgpICsiLCIgIHhsYWIoTlVMTCkgKyIsIiAgcmV0dXJuKGNvb3JkX2ZsaXAoKSkgI2VqZXMgY29vcmRlbmFkYXMiLCJ9Il19 -->

```r
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
```



<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



### 2.2.4 Paint World Map

+ Recuperamos el dataFrame guardado en el fichero .rds.
+ Buscamos informacion sobre los usuarios
+ Convertimos a DataFrame
+ Guardamos la informacion relativa a la localitzacion de los usuarios
+ API para conseguir la localización aproximada de los usuarios a partir de la Latitud, Longitud
+ Pintamos el mapa
+ Añadimos un punto por usuario
+ Conservamos la relacion de altura / anchura (proporciones)
+ Quitamos informacion no util del fondo
+ Como resultado dibujamos información de códigos geográficos de tweets sobre un mapa global


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjpbInBhaW50V29ybGRNYXAgPC0gZnVuY3Rpb24oZmlsZSl7IiwiICByZXF1aXJlKFwidHdpdHRlUlwiKSIsIiAgcmVxdWlyZShcIlJDdXJsXCIpIiwiICByZXF1aXJlKFwiZGlzbW9cIikiLCIgIHJlcXVpcmUoXCJtYXBzXCIpIiwiICByZXF1aXJlKFwiZ2dwbG90MlwiKSIsIiAgcmVxdWlyZShcIlhNTFwiKSIsIiAgcmVxdWlyZShcInBseXJcIikiLCIgIHJlcXVpcmUoXCJzdHJpbmdyXCIpIiwiIiwiICIsIiAgdHdlZXRGcmFtZSA8LSByZWFkUkRTKGZpbGUgPSBmaWxlKSAjU2FjYW1vcyBkYXRhRnJhbWUgZ3VhcmRhZG8gZW4gbGEgYnVzcXVlZGEiLCIiLCIgIHVzZXJJbmZvIDwtIGxvb2t1cFVzZXJzKHR3ZWV0RnJhbWUkc2NyZWVuTmFtZSkgICMgQnVzY2Ftb3MgaW5mb3JtYWNpb24gc29icmUgbG9zIHVzdWFyaW9zIiwiICB1c2VyRnJhbWUgPC0gdHdMaXN0VG9ERih1c2VySW5mbykgICMgQ29udmVydGltb3MgYSBEYXRhRnJhbWUiLCIiLCIgIGxvY2F0ZWRVc2VycyA8LSAhaXMubmEodXNlckZyYW1lJGxvY2F0aW9uKSAgIyBHdWFyZGFtb3MgbGEgaW5mb3JtYWNpb24gcmVsYXRpdmEgYSBsYSBsb2NhbGl0emFjaW9uIGRlIGxvcyB1c3VhcmlvcyIsIiIsIiAgbG9jYXRpb25zIDwtIGdlb2NvZGUodXNlckZyYW1lJGxvY2F0aW9uW2xvY2F0ZWRVc2Vyc10pICAjIEFQSSBwYXJhIGNvbnNlZ3VpciBsYSBsb2NhbGl6YWNpb24gYXByb3hpbWFkYSBkZSBsb3MgdXN1YXJpb3MgYSBwYXJ0aXIgZGUgbGF0aXR1ZCBpIGxvbmdpdHVkLiIsIiAgd2l0aChsb2NhdGlvbnMsIHBsb3QobG9uZ2l0dWRlLCBsYXRpdHVkZSkpIiwiIiwiICB3b3JsZE1hcCA8LSBtYXBfZGF0YShcIndvcmxkXCIpICAjIE1hcGFtdW5kaSIsIiIsIiAgenAxIDwtIGdncGxvdCh3b3JsZE1hcCkgIyBQaW50YW1vcyBlbCBtYXBhIiwiICAjdHJhdGFtb3MgZWwgbWFwYSIsIiAgenAxIDwtIHpwMSArIGdlb21fcGF0aChhZXMoeCA9IGxvbmcsIHkgPSBsYXQsIGdyb3VwID0gZ3JvdXApLCBjb2xvdXIgPSBncmF5KDIvMyksIGx3ZCA9IDEvMykiLCIgICMgQWZlZ2ltIHVuIHB1bnQgcGVyIHVzdWFyaSIsIiAgenAxIDwtIHpwMSArIGdlb21fcG9pbnQoZGF0YSA9IGxvY2F0aW9ucywgYWVzKHggPSBsb25naXR1ZGUsIHkgPSBsYXRpdHVkZSksIGNvbG91ciA9IFwiUkVEXCIsIGFscGhhID0gMS8yLCBzaXplID0gMS8zKSIsIiAgenAxIDwtIHpwMSArIGNvb3JkX2VxdWFsKCkgIyBwZXJtaXRlIGNvbnNlcnZhciBsYSByZWxhY2lvbiBhbHR1cmEgYW5jaG8gKHByb3BvcmNpb25lcykiLCIgIHpwMSA8LSB6cDEgKyB0aGVtZV9taW5pbWFsKCkgICMgcXVpdGFyIGluZm9ybWFjacOzbiBubyDDunRpbCBkZWwgZm9uZG8iLCIgIHJldHVybih6cDEpIiwifSJdfQ== -->

```r
paintWorldMap <- function(file){
  require("twitteR")
  require("RCurl")
  require("dismo")
  require("maps")
  require("ggplot2")
  require("XML")
  require("plyr")
  require("stringr")

 
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
  return(zp1)
}
```



<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



### 2.2.5 Word Cloud Tweets

+ Recuperamos el dataFrame guardado en el fichero .rds.
+ Recogemos el tweet
+ Limpiamos el tweets quitando comas, numeros, link html, espacios, caracteres raros (@, ^, \\, :, etc.)
+ Dividimos la frase en palabras sueltas eliminando conectores comunes
+ Eliminamos conectores comunes
+ Pintamos World cloud graphic con los tweets


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjpbIndvcmRDbG91ZFR3ZWV0cyA8LSBmdW5jdGlvbihmaWxlKXsiLCIgIHJlcXVpcmUoXCJ0d2l0dGVSXCIpIiwiICByZXF1aXJlKFwiUkN1cmxcIikiLCIgIHJlcXVpcmUoXCJkaXNtb1wiKSIsIiAgcmVxdWlyZShcIm1hcHNcIikiLCIgIHJlcXVpcmUoXCJnZ3Bsb3QyXCIpIiwiICByZXF1aXJlKFwiWE1MXCIpIiwiICByZXF1aXJlKFwicGx5clwiKSIsIiAgcmVxdWlyZShcInN0cmluZ3JcIikiLCIiLCIgIHR3ZWV0RnJhbWUgPC0gcmVhZFJEUyhmaWxlID0gZmlsZSkgI1NhY2Ftb3MgZGF0YUZyYW1lIGd1YXJkYWRvIGVuIGxhIGJ1c3F1ZWRhIiwiIiwiICAjIGNvZ2Vtb3MgZWwgdHdlZXQiLCIgIHR3ZWV0X3RleHRvID0gdHdlZXRGcmFtZSR0ZXh0IiwiICAjIyBvcGNpb25hbC4uLi4gcGVybyBpbXBvcnRhbnRlIC4uLiBsaW1waWFtb3MgZWwgdHdlZXQiLCIgICMgZWxpbWluYW1vcyBsYXMgcGFydGVzIHF1ZSBubyBub3MgaW50ZXJlc2FuIiwiICB0d2VldF90ZXh0byA9IGdzdWIoJyhSVHx2aWEpKCg/OlxcXFxiXFxcXFcqQFxcXFx3KykrKScsICcnLCB0d2VldF90ZXh0bykiLCIgICMgZWxpbWluYW1vcyBsYXMgcGVyc29uYXMgQC4uIiwiICB0d2VldF90ZXh0byA9IGdzdWIoJ0BcXFxcdysnLCAnJywgdHdlZXRfdGV4dG8pIiwiICAjIGVsaW1pbmFtb3Mgc2lnbm9zIGRlIHB1bnR1YWNpb24iLCIgIHR3ZWV0X3RleHRvID0gZ3N1YignW1s6cHVuY3Q6XV0nLCAnJywgdHdlZXRfdGV4dG8pIiwiICAjIGVsaW1pbmFtb3MgbnVtZXJvcy4uIiwiICB0d2VldF90ZXh0byA9IGdzdWIoJ1tbOmRpZ2l0Ol1dJywgJycsIHR3ZWV0X3RleHRvKSIsIiAgIyBlbGltaW5hbW9zIGxpbmtzIGh0bWwiLCIgIHR3ZWV0X3RleHRvID0gZ3N1YignaHR0cFxcXFx3KycsICcnLCB0d2VldF90ZXh0bykiLCIgICMgZWxpbWluYW1vcyBlc3BhY2lvcyBpbm5lY2VzYXJpb3MiLCIgIHR3ZWV0X3RleHRvID0gZ3N1YignWyBcXHRdezIsfScsICcnLCB0d2VldF90ZXh0bykiLCIgICMgZWxpbWluYW1vcyBjYXJhY3RlcmVzIHJhcm9zLi4iLCIgIHR3ZWV0X3RleHRvID0gZ3N1YignW15bOmdyYXBoOl1dJywgJyAnLCB0d2VldF90ZXh0bykiLCIiLCIgIHNwbGl0RGF0YSA8LSB1bmxpc3Qoc3Ryc3BsaXQodHdlZXRfdGV4dG8sIFwiXFxcXCBcIikpICNzcGxpdGVhbW9zIGxhIGZyYXNlIGVuIHBhbGFicmFzIHN1ZWx0YXMiLCIgICNhZGljaW9uYWxtZW50ZSBlbGltaW5hbW9zIGNvbmVjdG9yZXMgY29tdW5lcy4uLi4iLCIgIHN0b3B3b3JkcyA9IGMoXCJhcmVcIiAsIiwiICAgICAgICAgICAgICAgIFwiYWJsZVwiICwiLCIgICAgICAgICAgICAgICAgXCJhYm91dFwiICwiLCIgICAgICAgICAgICAgICAgXCJhYm92ZVwiICwiLCIgICAgICAgICAgICAgICAgXCJ0aGVcIiAsIiwiICAgICAgICAgICAgICAgIFwiYVwiICwiLCIgICAgICAgICAgICAgICAgXCJcIiwiLCIgICAgICAgICAgICAgICAgXCIgXCIsIiwiICAgICAgICAgICAgICAgIFwiYW5kXCIsIiwiICAgICAgICAgICAgICAgIFwiaGFzXCIsIiwiICAgICAgICAgICAgICAgIFwidGhpc1wiICwiLCIgICAgICAgICAgICAgICAgXCJvdXJcIiAsIiwiICAgICAgICAgICAgICAgIFwieW91J3ZlXCIgLCIsIiAgICAgICAgICAgICAgICBcImZvclwiKSIsIiAgc3BsaXREYXRhIDwtIHJlbW92ZVdvcmRzKHNwbGl0RGF0YSxzdG9wd29yZHMpIiwiICAjZGF0YUZyYW1lV29yZHMgPC0gYXMuZGF0YS5mcmFtZShzcGxpdERhdGEpIiwiICAjbSA8LSBhcy5tYXRyaXgoZGF0YUZyYW1lV29yZHMpIiwiICAjbnVtV29yZHMgPC0gY291bnQoZGF0YUZyYW1lV29yZHMpIiwiIiwiICB6IDwtIENvcnB1cyhWZWN0b3JTb3VyY2Uoc3BsaXREYXRhKSkgI29iamV0byBwYXJhIHBpbnRhci4uLiIsIiIsIiAgcmV0dXJuKHdvcmRjbG91ZCh6LCBtYXgud29yZHMgPSAxMDAsIHJhbmRvbS5vcmRlciA9IEZBTFNFKSkiLCJ9Il19 -->

```r
wordCloudTweets <- function(file){
  require("twitteR")
  require("RCurl")
  require("dismo")
  require("maps")
  require("ggplot2")
  require("XML")
  require("plyr")
  require("stringr")

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
```



<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



### 2.2.6 Paint Tweet Comparison

+ Contamos el numero de linias de cada fichero .rds con el objetivo de determinar el numero de tweets de cada ataque.
+ Creamos una matrix que contiene por una parte el numero de tweets y por otra el nombre del ataque.
+ Como resultado obtenemos un grafico que permite comparar el numero de tweets producidos entre varios ataques.



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjpbInBhaW50VHdlZXRzQ29tcGFyYXRpb24gPC0gZnVuY3Rpb24oZmlsZSwgZmlsZTIsIGZpbGUzKXsiLCIgIHJlcXVpcmUoUkN1cmwpIiwiICByZXF1aXJlKGRpc21vKSIsIiAgcmVxdWlyZShodHRyKSIsIiAgcmVxdWlyZShYTUwpIiwiIiwiICBudHdlZXRzIDwtIG5yb3cocmVhZFJEUyhmaWxlID0gZmlsZSkpIiwiICBudHdlZXRzMiA8LSBucm93KHJlYWRSRFMoZmlsZSA9IGZpbGUyKSkiLCIgIG50d2VldHMzIDwtIG5yb3cocmVhZFJEUyhmaWxlID0gZmlsZTMpKSIsIiIsIiAgZ3JhcGhpYyA8LSBtYXRyaXgoYyhudHdlZXRzLG50d2VldHMyLG50d2VldHMzKSxuY29sPTMsYnlyb3c9VFJVRSkiLCIgIGNvbG5hbWVzKGdyYXBoaWMpIDwtIGMoXCJXYW5uYWNyeVwiLFwiUGV0eWFcIiwgXCJKdWR5XCIpIiwiICBncmFwaGljIDwtIGFzLnRhYmxlKGdyYXBoaWMpIiwiICAjZ3JhcGhpYyIsIiIsIiAgcmV0dXJuKGJhcnBsb3QoZ3JhcGhpYywgbWFpbiA9IFwiQ29tcGFyYWNpw7NuIG7CuiB0d2VldHMgYXRhcXVlc1wiKSkiLCJ9Il19 -->

```r
paintTweetsComparation <- function(file, file2, file3){
  require(RCurl)
  require(dismo)
  require(httr)
  require(XML)

  ntweets <- nrow(readRDS(file = file))
  ntweets2 <- nrow(readRDS(file = file2))
  ntweets3 <- nrow(readRDS(file = file3))

  graphic <- matrix(c(ntweets,ntweets2,ntweets3),ncol=3,byrow=TRUE)
  colnames(graphic) <- c("Wannacry","Petya", "Judy")
  graphic <- as.table(graphic)
  #graphic

  return(barplot(graphic, main = "Comparación nº tweets ataques"))
}
```



<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



# 3.	A continuación unos gráfico que muestran la relación entre número de tweets y los ataques analizados

## 3.1 DDoS Playstation 

Fecha: 21 octubre 2016

Quien: botnet Mirai

Empresa afectada: Ataque de denegación de servicio (DDoS) a Play Station y Twitter, entre otros   

Se trata del mayor ataque de DDoS producido hasta la fecha con dispositivos de Internet de las cosas (IoT). Producido por la botnet Mirai, compuesta por cientos de miles de cámaras IP junto a otros dispositivos IoT, dejó fuera de juego a múltiples servicios de Internet, llegando a afectar a Play Station Network y Twitter, entre otros. Se sospecha que este ciberataque habría sido también una prueba de concepto para afectar al funcionamiento de los sistemas de voto electrónico de EE.UU., antes de las elecciones del 8 de noviembre. 


### 3.1.1 DDoS Playstation grafico

En el gráfico siguiente, podemos observar el número de tweets por día del ataque:

<!-- grafico Playstation -->

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### 3.1.2 DDoS Playstation mapamundi

En este segundo gráfico, vemos los diferentes tweets pintados en el mapa mundi:

<!-- mapamundi Playstation -->

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### 3.1.3 DDoS Playstation apple

En este gráfico, podemos observar la proporción de tweets por los diferentes paises de origen:

<!-- llamada a las funciones  -->


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



### 3.1.4 DDoS Playstation palabras repetidas

Por último, la siguiente figura representa una nube de palabras donde se pueden apreciar las palabras más repetidas en los tweets del ataque:

<!-- palabras repetidas Playstation -->

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## 3.2 Wannacry 

Fecha: 12 mayo 2017

Quien: origen no claro, Rusia o EEUU

Empresa afectada: afectó a las empresas Telefónica, Iberdrola y Gas Natural, entre otras compañías en España, así como al servicio de salud británico, como confirmó el Centro Nacional de Inteligencia. La prensa digital informaba aquel día que al menos 141 000 computadores habían sido atacados en todo el mundo.

Resumen: WannaCry es otro ransomware, una evolución de lo que podría ser CryptoLocker. Es un tipo de virus, del formato troyano, con la capacidad de introducirse en nuestro equipo explotando una vulnerabilidad de software.

El ransomware tiene como objetivo cifrar los archivos del equipo infectado para pedir un rescate vía BitCoins. Para que el proceso de encriptación sea más rápido solo encripta aquellos ficheros más críticos del usuario (doc, jpg, pdf) evitando encriptar archivos del sistema, para mayor velocidad.

### 3.2.1 Wannacry grafico

En el gráfico siguiente, podemos observar el número de tweets por día del ataque:

<!-- grafico Wannacry-->
### 3.2.2 Wannacry mapamundi

En este segundo gráfico, vemos los diferentes tweets pintados en el mapa mundi:
<!-- mapamundi Wannacry-->
### 3.2.3 Wannacry apple

En este gráfico, podemos observar la proporción de tweets por los diferentes paises de origen:
<!-- apple Wannacry -->
### 3.2.4 Wannacry palabras repetidas

Por último, la siguiente figura representa una nube de palabras donde se pueden apreciar las palabras más repetidas en los tweets del ataque:

<!-- palabras repetidas Wannacry-->

## 3.3 Petya 

Fecha: fecha inicio virus marzo 2016, primer gran ciberataque 28 junio 2017

Quien: Janus, que así se hace llamar este usuario en su cuenta de Twitter

Empresa afectada: 80 empresas fueron atacadas, incluyendo el Banco Nacional de Ucrania.

Resumen: El 27 de junio de 2017, comenzó un ciberataque mundial (las compañías ucranianas fueron las primeras en afirmar que estaban siendo atacadas), utilizando una nueva variante de Petya.3 En ese día, Kaspersky Lab informó de infecciones en Francia, Alemania, Italia, Polonia, Reino Unido y Estados Unidos, pero que la mayoría de las infecciones se dirigieron a Rusia y Ucrania.

Este malware utiliza ingeniería social para convencer a usuarios (o a administradores de redes) de descargar un archivo que al abrirlo se autoextrae y ejecuta el troyano. Al ejecutarse aparece una alerta de Windows. Si el usuario prosigue, Petya se aloja el registro de arranque principal del la computadora de la víctima, desactiva el modo de inicio seguro de Windows y el equipo se reinicia. Al reiniciar, aparecen ventanas de alerta indicando que el equipo ha sido secuestrado y cómo acceder al sitio de los secuestradores para pagar el rescate antes del vencimiento de un plazo de tiempo. Al vencerse el plazo de tiempo, el monto del rescate se duplica.


### 3.3.1 Petya grafico

En el gráfico siguiente, podemos observar el número de tweets por día del ataque:

<!-- grafico Petya -->

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### 3.3.2 Petya mapamundi

En este segundo gráfico, vemos los diferentes tweets pintados en el mapa mundi:

<!-- mapamundi Petya  -->

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### 3.3.3 Petya apple

En este gráfico, podemos observar la proporción de tweets por los diferentes paises de origen:

<!-- apple Petya -->


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### 3.3.4 Petya palabras repetidas

Por último, la siguiente figura representa una nube de palabras donde se pueden apreciar las palabras más repetidas en los tweets del ataque:

<!-- palabras repetidas Petya -->

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## 3.5 Judy

Fecha: mayo 2017

Quien: Se especula con la idea de que el virus fue creado y extendido por hackers de Corea del Sur a través de una compañía llamada Kiniwini.

Empresa afectada: dispositivos Android

Resumen: posiblemente el ataque más grande a dispositivos Android Cuando un usuario se descargaba e instalaba algunos de los juegos de Judy, la aplicación abría una pasarela que conectaba el dispositivo con una web en la que se pinchaba en enlaces de publicidad que generaban ingresos a los hackers a través de la infraestructura publicitaria de Google. 
Todo esto de manera oculta y sin conocimiento del usuario.


### 3.5.1 Judy grafico

En el gráfico siguiente, podemos observar el número de tweets por día del ataque:

<!-- grafico Judy -->

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### 3.5.2 Judy mapamundi

En este segundo gráfico, vemos los diferentes tweets pintados en el mapa mundi:

<!-- mapamundi Judy -->

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### 3.5.3 Judy apple

En este gráfico, podemos observar la proporción de tweets por los diferentes paises de origen:

<!-- apple Judy -->

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### 3.5.4 Judy palabras repetidas

Por último, la siguiente figura representa una nube de palabras donde se pueden apreciar las palabras más repetidas en los tweets del ataque:

<!-- palabras repetidas Judy -->

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



# Comparación resultados / Conclusíones

En base a los ejemplos de ciberataques analizados en este trabajo, entendemos que se puede detectar una tendencia de incremento a lo largo de los años de la concienciación de los usuarios. Las redes sociales no son el mundo real, pero dan pistas que no deben tomarse a la ligera. 
Entendemos que el hecho de que los usuarios traten de buscar, cada vez en mayor medida, información en las redes sociales (en nuestro caso en Twitter) refleja:

+ a.	Una mayor concienciación de los riesgos que implican estos ataques.
+ b.	Un mayor conocimiento del impacto que pueden tener los ciberataques.
+ c.	Hay una relación bastante evidente entre los países más desarrollados y el nivel de interés/consultas/búsquedas sobre los ciberataques.

Como se muestra a continuación, la siguiente gráfica compara el numero de tweets de los diferentes ataques análizados:

<!-- grafico comparacion -->


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


# Material Complementario - Proyecto

+ [GitHub Proyecto](https://github.com/FabiPaezF)


<!-- rnb-text-end -->

