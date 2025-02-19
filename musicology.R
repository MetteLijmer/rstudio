library(plotly)
library(ggplot2)
ggplot_object <- ggplot(mtcars, aes(x = mpg, y = hp)) + 
  geom_point()
ggplotly(ggplot_object)