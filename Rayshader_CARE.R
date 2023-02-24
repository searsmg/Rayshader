library(rayshader)
library(rgdal)

#Here, I load a map with the raster package.
#loadzip = tempfile() 
#download.file("C:/Users/sears/Desktop/USGS_13_n39w112.tif", loadzip)
#setwd("C:/Users/sears/Desktop/USGS_13_n39w112.tif")
localtif = raster::raster("C:/Users/sears/Desktop/USGS_13_n39w112.tif")
#unlink(loadzip)

#And convert it to a matrix:
elmat = raster_to_matrix(localtif)

#We use another one of rayshader's built-in textures:
elmat %>%
  sphere_shade(texture = "desert") %>%
  plot_map()

#test