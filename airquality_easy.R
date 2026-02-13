library(animint2)
library(data.table)

# Using built-in airquality data
# I care about AQI because levels are high in my country
data("airquality")
dt <- as.data.table(airquality)

# Add month labels and ID for smooth transitions
dt[, month := factor(Month, levels = 5:9, 
                     labels = c("May", "Jun", "Jul", "Aug", "Sep"))]
dt[, id := .I]

# Remove rows with missing values
dt <- dt[!is.na(Ozone) & !is.na(Wind) & !is.na(Temp)]

# Selector plot: click to choose month
plot_selector <- ggplot() +
  geom_point(data = dt,
             aes(x = Temp, y = Wind, fill = month, key = id),
             clickSelects = "month",
             shape = 21, size = 4, alpha = 0.7) +
  theme_bw() +
  ggtitle("NYC Air Quality:- Click to select month")

# Filtered plot: shows selected month only
plot_filtered <- ggplot() +
  geom_point(data = dt,
             aes(x = Day, y = Ozone, fill = month, key = id),
             showSelected = "month",
             shape = 21, size = 4) +
  theme_bw() +
  ggtitle("Ozone levels (filtered by month)")

# Create the interactive visualization
viz <- animint(
  selectorPlot = plot_selector,
  ozonePlot = plot_filtered,
  title = "NYC Air Quality Month Selector",
  duration = list(month = 500)
)

# Generate output in test folder
animint2dir(viz, out.dir = "airquality_month_selector", open.browser = TRUE)

