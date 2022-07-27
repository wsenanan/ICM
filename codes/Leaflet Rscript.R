getwd()
setwd("E:/Rmarkdown/data")
library(readxl)
library(leaflet)

coord <-read_xlsx("coordinates.xlsx",
                  sheet = "Sheet1")

leaflet(data=coord) %>%
  addTiles() %>%
  addMarkers(lng = ~longitude,
             lat = ~latitude,
             popup = ~station)
# or

leaflet() %>%
  addTiles() %>%
  addMarkers(data=coord, 
             lng = ~longitude,
             lat = ~latitude,
             popup = ~station)
