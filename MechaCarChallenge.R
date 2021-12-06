# Deliverable 1: Linear Regression to Predict MPG

# Use the library() function to load the dplyr package.
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table))

# ----------------------------------------------------------

# Deliverable 2: Create Visualizations for the Trip Analysis

# Import and read in the Suspension_Coil.csv file as a table
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create total_summary dataframe using summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_table %>% summarize(Mean_PSI=mean(PSI),Medium_PSI=median(PSI),Variance_PSI=var(PSI),Standard_Deviation_PSI=sd(PSI), .groups = 'keep')

# Create a lot_summary dataframe using group_by() and summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Medium_PSI=median(PSI),Variance_PSI=var(PSI),Standard_Deviation_PSI=sd(PSI), .groups = 'keep')

# ----------------------------------------------------------

# Deliverable 3: T-Tests on Suspension Coils

# Use t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_table$PSI,mu=1500)

# Use t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
# Lot1
t.test(subset(suspension_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
# Lot2
t.test(subset(suspension_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
# Lot3
t.test(subset(suspension_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
