# MechaCar_Statistical_Analysis
MechaCar Statistical Analysis using R

### Project Overiview
 
## Background
 
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. 
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.
 
## Purpose
 
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 


## Resources:
 
R (dplyr package)

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. 
 
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. 
 

## Linear Regression to Predict MPG

Designed a linear model in R that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. Determined the p-value and the r-squared value for the linear regression model.

Linear Regression Model:

![D1_ MechaCar_lm.PNG](D1_ MechaCar_lm.PNG)

Summary of Statistics:

![D1_MechaCar_summarize.PNG](D1_MechaCar_summarize.PNG)

Summary:

In our survey of 50 prototypes, (intercepet), vehice_length, and ground_clearance provided a non-random amount of variance to the mpg values in the dataset. We found significant relationship between the vehicle_length and mpg and between ground_clearance and mpg. Specifically we found 6.27% increase (± 0.6553) in mpg for every 1% increase vehicle_length, and a 3.55% increase (± 0.5412) in mpg for every 1% increase in ground clearance.  There is no significant relationship between AWD and mpg.

Because the p-value of model (5.35e-11) is less than the alpha 0.05, the slope of the linear model is not considered to be zero. The linear model predict mpg of MechCar proptotype effectively since the Adjusted R-Squared of this analysis is 0.685 (closer to 1) means that a large proportion of the variability in the outcome has been explained by the regression model.  Had the number been closer to 0 then the regression model would not have explained much of the variability in the outcome.  The mutiple R-squared (1.0.7149) is also closer to 1.


## Summary Statistics on Suspension Coils
 
-The suspension coil’s PSI continuous variable across all manufacturing lots

![D2_total_summary_df.PNG](D2_total_summary_df.PNG)


-The following PSI metrics for each lot: mean, median, variance, and standard deviation

![D2_lot_summary_df.PNG](D2_lot_summary_df.PNG)

Summary:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

The current manufacturing data meet the design specifications for all manufacturing lots in total as the variance is 62.2936, well below 100 pounds per square inch. Individually lot 1 and lot 2 meet the design specifications but lot 3 does not as its variance is 170.286 which is above the 100 pounds per square inch requirement.


## T-Tests on Suspension Coils

- Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
- Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.


## Study Design: MechaCar vs Competition
Design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.