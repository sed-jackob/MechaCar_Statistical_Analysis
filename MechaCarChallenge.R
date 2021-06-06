# Iport libraries
library(dplyr)

# Read data file
cars_db <- read.csv("MechaCar_mpg.csv")

# Perform linear regression
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=cars_db)
summary(model)
