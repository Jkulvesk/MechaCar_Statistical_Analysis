library(dplyr)

cardata <- read.csv('UTProjectDocs/mod15r_stat/MechaCar_Statistical_Analysis/MechaCar_mpg.csv')

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=cardata)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=cardata))


model <- lm(mpg ~ vehicle_weight + + vehicle_weight + spoiler_angle + ground_clearance + AWD,cardata)
#plotting linear regression line on plot
yvals <- model$coefficients['vehicle_weight']*cardata$vehicle_weight +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model

plt <- ggplot(cardata,aes(x=vehicle_weight,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

#to get slope print
print(model$coefficients['(intercept)'])

print(model$coefficients['vehicle_weight']*cardata$vehicle_weight)

print(model$coefficients)

lm(mpg ~ vehicle_weight,data=cardata)
summary(lm(mpg ~ vehicle_weight,data=cardata))


#Deliverable 2
susdata <- read.csv('UTProjectDocs/mod15r_stat/MechaCar_Statistical_Analysis/Suspension_Coil.csv')

?summarize()
#mpg_summary <- mpg %>% group_by(class,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table

total_summary <- summarize(susdata, mean = mean(PSI), median = median(PSI), variance = var(PSI), SD = sd(PSI))

lot_summary <- susdata %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), SD = sd(PSI), .groups = 'keep')


#Deliverable 3

t.test(susdata$PSI, mu = 1500)

lot1data <- subset(susdata, Manufacturing_Lot == 'Lot1')
lot2data <- subset(susdata, Manufacturing_Lot == 'Lot2')
lot3data <- subset(susdata, Manufacturing_Lot == 'Lot3')


t.test(lot1data$PSI, mu = 1500)
t.test(lot2data$PSI, mu = 1500)
t.test(lot3data$PSI, mu = 1500)
