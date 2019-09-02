#!/usr/local/bin/Rscript

# Change the working directory 
setwd("/Users/Asish/Desktop")
install.packages("twitteR")
install.packages("ROAuth")
install.packages("streamR")

library(twitteR)
library(ROAuth)
library(streamR)

# Callback URL
requestURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"

# Keys 
consumerKey <- "XKCvkSC3TQDBJlLfaMJGbyuyT"
consumerSecret <- "SPkJ1siXeBh13GmwcrCYispF8eriDx7LQoIdMYfADodsG9neUe"

my_oauth <- OAuthFactory$new(consumerKey=consumerKey,
  consumerSecret=consumerSecret, requestURL=requestURL,
  accessURL=accessURL, authURL=authURL)

  my_oauth$handshake(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))
save(my_oauth, file="twitter-token.Rdata")


load("twitter-token.Rdata")
 
filterStream(file.name = "tweets1.json", # Save tweets in a json file
             track = c("flu","Influenza"), # Collect tweets mentioning either Affordable Care Act, ACA, or Obamacare
             language = "en",
             location = c(-125, 25, -66, 50), # latitude/longitude pairs providing southwest and northeast corners of the bounding box.
             timeout = 120, # Keep connection alive for 60 seconds
             oauth = my_oauth) # Use my_oauth file as the OAuth credentials
 