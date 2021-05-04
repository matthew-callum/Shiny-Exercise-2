library(leaflet)
library(leafem)
library(mapview)

#Create the Map
my_map <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-1.6178, lat=54.9783, popup="World's most important city!")

my_map  # Display the map in Viewer window

leaflet() %>% 
  addProviderTiles(providers$Esri.WorldImagery) %>% 
  addProviderTiles(providers$Stamen.TonerLines,
                   options = providerTileOptions(opacity = 0.5)) %>%
  addProviderTiles(providers$Stamen.TonerLabels) %>% 
  addMarkers(lng=-1.6178, lat=54.9783, popup="World's most important city!")

leaflet() %>%
  addTiles() %>%  
  addCircleMarkers(lng=-1.6178, lat=54.9783,
                   popup="Newcastle population 270k",
                   labelOptions = labelOptions(textsize = "15px"),
                   radius = 5, color = "red") %>%
  addCircleMarkers(lng = 0.1278, lat=51.5074,
                   popup="London population 8,000,000",
                   labelOptions = labelOptions(textsize = "30px"),
                   radius=50, color="Purple")
