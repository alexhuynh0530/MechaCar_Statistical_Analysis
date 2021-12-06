# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The vehicle weight, spoiler angle and AWD provided a non-random amount of variance because the p-value was less than 0.05 rejecting the null hypothesis. 

- Is the slope of the linear model considered to be zero? Why or why not?

No, the slope of the linear model is not zero because the p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The R-squared value represents how well the regression model approximates real-world data points and our linear regression analysis has an R-squared value of 0.7149, therefore, future data points have 71.49% of fitting our linear model.

## Summary Statistics on Suspension Coils

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The manufacturing data does not meet design specifications for all manufacuring lots in total because of the high variance and standard deviation. When looking at each lot individually Lot 1 meets design specifications with variance and standard deviation below 1.

## T-Tests on Suspension Coils

Lot1 has a p-value of 1 so the observed effect almost exactly equals the null hypothesis value. The p-value for Lot2 is 0.6072 (> 0.05)so the data here is not statistically significant and indicates strong evidence for the null hypothesis. Lot3 has a p-value of 0.04168 (< 0.05) which rejects the null hypothesis that there's no difference between the means and conclude that a significant difference does exist.

### Lot 1, 2, and 3

![Deliverable_3_t_test_per_lot.png](https://github.com/alexhuynh0530/MechaCar_Statistical_Analysis/blob/main/Screenshots/Deliverable_3_t_test_per_lot.png)

### Lot 2



### Lot 3



## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

Statistical study to quantify how the MechaCar performs against competition:
We will use horsepower to compare performance

- What metric or metrics are you going to test?

Horsepower, quarter-mile race time, mpg.

- What is the null hypothesis or alternative hypothesis?

MechaCar has the same horsepower and quarter-mile race time as competitor.

- What statistical test would you use to test the hypothesis? And why?

Using two-sample t-test to deterine statistical difference between MechaCar and competitors.

- What data is needed to run the statistical test?

Data of compettior vehicle with all the same metrics being used with the MechaCar data. 
