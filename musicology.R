library(plotly)
library(Cairo)

library(ggplot2)

# Maak een voorbeeld dataset
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100)
)

# Maak een ggplot
ggplot_obj <- ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  labs(title = "Voorbeeld scatterplot", x = "X-as", y = "Y-as")

interactive_plot <- ggplotly(ggplot_obj)

# Toon de interactieve grafiek
interactive_plot

library(htmlwidgets)
saveWidget(interactive_plot, "interactive_plot.html")

