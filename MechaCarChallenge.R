# Iport libraries
library(dplyr)

## Deliverable 1: Linear Regression to Predict MPG

# Read data file
cars_db <- read.csv("MechaCar_mpg.csv")

# Perform linear regression
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=cars_db)
summary(model)

## Deliverable 2: Create Visualizations for the Trip Analysis

# Read data file
suspension_db <- read.csv("Suspension_Coil.csv")

total_summary <- suspension_db %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

lot_summary <- suspension_db %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


## Deliverable 3: T-Tests on Suspension Coils

t.test(suspension_db$PSI,mu=1500)

t.test( subset(suspension_db,Manufacturing_Lot=="Lot1")$PSI , mu=1500)
t.test( subset(suspension_db,Manufacturing_Lot=="Lot2")$PSI , mu=1500)
t.test( subset(suspension_db,Manufacturing_Lot=="Lot3")$PSI , mu=1500)

        
        
        
        
        
        
        
        
        
        
        
