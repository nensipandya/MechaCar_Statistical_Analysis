# MechaCar_Statistical_Analysis

## Statistics and R
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Main Overview
1. Load, clean up, and reshape datasets using tidyverse in R.
2. Visualize datasets with basic plots such as line, bar, and scatter plots using ggplot2.
3. Generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.
4. Plot and identify distribution characteristics of a given dataset.
5. Formulate null and alternative hypothesis tests for a given data problem.
6. Implement and evaluate simple linear regression and multiple linear regression models for a given dataset.
7. Implement and evaluate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.
8. Implement and evaluate a chi-squared test for a given dataset.
9. Identify key characteristics of A/B and A/A testing.
10. Determine the most appropriate statistical test for a given hypothesis and dataset.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Linear Regression to Predict MPG
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
The MechaCar dataset contains miles per gallon test results for 50 prototype MechaCars. The linear regression was done by using R in  R-studio.


A summary of the linear regression can be displayed to determine the quality of the dataset. In this distribution of the residuals, the dataset fits in with the normal parameters, where the absolute value of the min and max are comparable |-19.47|~|18.58| and the median -.07 is close to zero.


![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/107137215/193047268-dc732dd2-e56a-439d-814b-154d08c20b5f.jpg)


  #### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  
  A 93% level of confidence was predetermined, meaning the p-value should be compared to alpha = .05 level of significance to verify if statistically significant.
  
  Coefficients:
  mpg: 0 < .05, statistically significant, non-random amount of variance
  vehicle length: 0 < .05, statistically significant, non-random amount of variance
  vehicle weight: .08 > .05 not statistically significant, random amount of variance
  spoiler angle: .31 > .05 not statistically significant, random amount of variance
  ground clearance: 0 > .05 statistically significant, non-random amount of variance
  AWD: .19>=.05 not statistically significant, random amount of variance

  In summary, vehicle length and ground clearance variables represent non-random amounts of variance as applied to the mpg values.
  
  #### Is the slope of the linear model considered to be zero? Why or why not?
  
  Converting from scientific notation, all of the slopes of the variables are shown to be non-zero even though some are close to zero:
  
  Coefficients:
  vehicle length: 6.267
  vehicle weight: .001
  spoiler angle: .069
  ground clearance: 3.546
  AWD: -3.411
  
  The multiple linear regression equation becomes y = m1x1 + m2x2 + … + mnxn + b, for all independent x variables and their m coefficients.
  
  The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), 
  which results in a non-zero slope.
  

  #### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  
  Multiple R-squared value is 0.7149, which shows a strong correlation of datasets and it also shows that dataset is effective.
  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Summary Statistics on Suspension Coils
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Total Manufacturing Lot Summary

Below is the summary statistics of all of the manufacturing lots. The mean is 1498.78 for this sample and the population mean was determined to be 1500.


![total_summary](https://user-images.githubusercontent.com/107137215/193070572-efe390c1-69b1-4d77-b56d-14873aabbe8a.jpg)

### Summary of Each Maufacturing Lot Number

The means of the lot numbers are similar to the population mean and the sample mean.

![lot_summary](https://user-images.githubusercontent.com/107137215/193071037-b911cb3a-c189-4074-aa00-995a3839deb6.jpg)

####  The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The variance for the total manufacturing lot is 62 < 100, which is within the expected design specifications of staying under 100 PSI. However, when reviewing the data by Lot number, Lot 3 is a large contributing factor to the variance being high. Lot 3 shows a variance of 170 > 100 and does not meet the design specifications. Lot 1 and Lot 2 have significantly lower variance, 1 and 7 respectively.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
## T-Tests on Suspension Coils
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#### T-Test for All manufacturing Lot
All Manufacturing Lot: p-value < 0.60 , alpha = .05
.60 > .05, which means the total manufacturing lot is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

![t Test of PSI of all Manufactuting_Lot](https://user-images.githubusercontent.com/107137215/193071909-e035c0dd-4b74-4346-9e1a-387af2e741fc.jpg)

#### T-Test for Lot-1
Lot 1: p-value = 1, alpha = .05
1 > .05, which means Lot 1 is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval

![t test for Lot-1](https://user-images.githubusercontent.com/107137215/193071982-036b8dd6-7060-48af-98b5-ba8d0d29507c.jpg)

#### T-Test for Lot-2
Lot 2: p-value = .6072, alpha = .05

.60 > .05, which means Lot 2 is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

![t test for Lot-2](https://user-images.githubusercontent.com/107137215/193071998-007e4f72-a0c0-496e-932b-ff77893ffefe.jpg)

#### T-Test for Lot-3
Lot 3: p-value = .06, alpha = .05
.06 > .05, which means it is statistically not significant from the normal distribution and normality can be assumed. However, the mean falls within the 95% confidence interval.

![t test for Lot-3](https://user-images.githubusercontent.com/107137215/193072023-5c54f71e-ca24-4e42-a3be-b1ffd0a75b6d.jpg)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Study Design: MechaCar vs Competition
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

When comparing MechaCar to its competitor’s other metrics that could be of interest to a consumer could include cost, car color, city fuel efficiency, highway fuel efficiency, horsepower, maintenance cost, or safety rating.

#### What metric or metrics are you going to test?
The next metrics to test should be the safety rating  and highway fuel efficiency, which address some safety concerns of consumers.

#### What is the null hypothesis or alternative hypothesis?
The null hypothesis is that the mean of the safety rating is zero. The alternative hypothesis is that the mean of the safety rating is not zero.

#### What statistical test would you use to test the hypothesis? And why?
Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors.

#### What data is needed to run the statistical test?
A random sample of n > 50 for MechaCar and their competitor, would need to be collected including the safety ratings, highway fuel efficiency, and horsepower plus running the data through RStudio.
