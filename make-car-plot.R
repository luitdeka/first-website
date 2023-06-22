
library(tidyverse)
library(ggthemes)

car_plot <- mtcars |>
  select(mpg, wt) |>
  ggplot(aes(x = wt, y = mpg)) + 
  geom_point() +
  geom_smooth(method = "lm",
              formula = y ~ x, se = FALSE) +
  theme_clean() +
  labs(
    title = "Fuel Efficiency and Weight",
    subtitle = "Heavier Cars have less fuel efficiency",
    x = "Weight(1000s of pounds)", y = "MPG",
    caption = "Henderson and Vellerman(1981)"
  )
write_rds(car_plot, "car-plot.rds")

