library(dplyr)
#Linear regression to Predict MPG
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table) 
#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table)) 

#Summary Statistics on Suspension Coils
suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary_df <- suspension_coil_table %>% summarise(mean = mean(PSI), median =median(PSI), variance= var(PSI), sd= sd(PSI),n = n())
lot_summary_df <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarise(mean = mean(PSI), median =median(PSI), variance= var(PSI), sd= sd(PSI),n = n())

#T-Tests on Suspension Coils of all the lots
t.test(suspension_coil_table$PSI,mu=1500) 

# filter lots from sample
lot_1_table <- suspension_coil_table %>% filter(Manufacturing_Lot=="Lot1")  
lot_2_table <- suspension_coil_table %>% filter(Manufacturing_Lot=="Lot2") 
lot_3_table<- suspension_coil_table %>% filter(Manufacturing_Lot=="Lot3") 

# t-test on Suspension Coils of each lot  
t.test(lot_1_table$PSI,mu=1500)  
t.test(lot_2_table$PSI,mu=1500) 
t.test(lot_3_table$PSI,mu=1500)
