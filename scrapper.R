library(XML) #Pour la fonction htmlParse()
library(httr) #Pour la fonction GET()

artist <- "Eminem/Revival"
url_website <-"https://genius.com"
url_repo <- "/artists/"
url_artist <- paste0(url_website,url_repo,artist)

#Recuperation du site web 
request <- GET(url_artist)

#Parsing
doc <- htmlParse(request, asText = TRUE)

print(doc)

#Pour recuperer les liens ici : //div/a
#xpathSApply(doc, "//div/a", xmlGetAttr, 'href')

#Recupere les liens qui contienne "/albums/"
#grep("albums", dataset, value = TRUE)


