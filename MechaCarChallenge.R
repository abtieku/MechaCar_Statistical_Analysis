#Deliverable 1
library(dplyr)
mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)) #generate summary statistics

#Deliverable 2
sus_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- sus_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep') #create summary table
lot_summary <- sus_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep') #create lot summary

# Deliverable 3
t.test((sus_table$PSI),mu=mean(lot_summary$Mean))

t.test(sus_table$PSI,data=subset(sus_table$Manufacturing_Lot=="Lot1"),mu=mean(lot_summary$Mean[1:2])) #Lot1
t.test(sus_table$PSI,data=subset(sus_table$Manufacturing_Lot=="Lot2"),mu=mean(lot_summary$Mean[2:2])) #Lot2
t.test(sus_table$PSI,data=subset(sus_table$Manufacturing_Lot=="Lot3"),mu=mean(lot_summary$Mean[3:2])) #Lot3
       
       