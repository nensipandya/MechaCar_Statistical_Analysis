#################  Deliverable 1 ###########################
#load package
library(dplyr)

# import and read csv as a table
MechaCar_mpg <- read.csv("./Resources/MechaCar_mpg.csv")

#linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

#summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))


################### Deliverable 2 ##########################

# import and read cvs as a table
Suspension_Coil <- read.csv("./Resources/Suspension_Coil.csv")

# start summary with summarize function
total_summary <- Suspension_Coil%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups =' keep')

# create lot_summary by using group_by function
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep')                                                                             


################## Deliverable 3 ##############################

# t-Test for all manufacturing lot, mean of PSI , population mean 1500
t.test(Suspension_Coil$PSI, mp = mean(Suspension_Coil$PSI))

# t.Test and subset for Manufacturing Lot-1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mp=mean(Suspension_Coil$PSI))
# t.Test and subset for Manufacturing Lot-2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mp=mean(Suspension_Coil$PSI))
# t.Test and subset for Manufacturing Lot-3
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mp=mean(Suspension_Coil$PSI))
