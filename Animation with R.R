#installing animation packages

install.packages("animate")
install.packages("gganimate")
install.packages("plotly")
install.packages("googleVis")
install.packages("datasauRus")
install.packages("gapminder")
install.packages("animation")


library("animate")
library("gganimate")
library("plotly")
library("googleVis")
library("datasauRus")
library(ggplot2)
library(gapminder)


# The package is written by Yihui with a companion website here: https://yihui.name/animation/
library(animation)

# Some helper libraries for data munging
library(tidyverse)

# check the animation options with
ani.options()

# set the working directory to the html folder. 
# This way we can host our animation as a public web page using MatrixDS

ani.options(interval = 0.05, 
            nmax = 100)

# create and html version with controls
desc = c("This is a super cool example of Gradient Descent")
saveHTML({
  f1 = function(x, y) x^2 + 3 * sin(y)
  xx = grad.desc(f1, pi * c(-2, -2, 2, 2), c(-2 * pi, 2))
  xx$persp(col = "lightblue", theta = 30, phi = 30)
},title = "Demo of Gradient Descent", 
description = desc, verbose = FALSE)

# create a gif with no controls
saveGIF({
  f1 = function(x, y) x^2 + 3 * sin(y)
  xx = grad.desc(f1, pi * c(-2, -2, 2, 2), c(-2 * pi, 2))
  xx$persp(col = "lightblue", theta = 30, phi = 30)
},title = "Demo of Gradient Descent", 
description = desc, verbose = FALSE,
convert = 'gm convert', movie.name = 'grad_des_animation.gif')

#another html example for least squres

par(mar = c(5, 4, 0.5, 0.1))
ani.options(interval = 0.3, nmax = 50)

saveHTML({
  least.squares()
},title = "Demo of Least Squares", 
description = desc, verbose = FALSE)




