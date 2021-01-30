# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
 - The p-value determines how significant the variables are to the MPG values. Ideally, the p-value should be .05 or less. None of the variables against MPG met that threshold. In looking at all of the values, vehicle weight (8% probability it is random) and AWD (18% probability it is random) variables are the most significant variables. 
---Include screenshot

#### Is the slope of the linear model considered to be zero? Why or why not?
- The coefficients determine the slope. In determining the coefficents, vehicle weight is the closest to a zero slope. Other variables have a much stronger slope or negative slope. See screenshot below. 
---include screenshot

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

- It does not. Given the expense to manufacture vehicles, it would not use the model to predict MPG prototypes. The p-value (5.35e-11) did not meet the .05 threshold and the r-value (.71) confirms the strength of the model (that it should not be used).

## Summary Statistics on Suspension Coils
Current design specifications for the MechaCar suspension coils dictacte that the variance of the suspension coils must not exceed 100 PSI (pounds per square inch). According to the current manufacturing data, overall, the variance is 62 PSI, however, if you look at the variance by lot, LOT 3 is over the 100 PSI variance threshold, at 170 PSI and it is likely this lot should be inspected and possibly rejected.

----Insert screenshots

## T-Tests on Suspension Coils
This analysis looked at whether the all the lots were different from the mean PSI of 1500. The t-test for the overall manufacturing data showed the p-value was at .06, which is not significant enough to assume that the means are statistically similar.

In looking at each of the lots:
 - Lot1: This lot has a p-value of 1 which is much higher than .05. In this case, the means are not statistically similar.
 - Lot2: This lot has a p-value of .6, meaning the means are not statistically similar.
 - Lot3: This lot has a p-value of .04 which is statistically significant to conclude that the mean of this lot is similar to the mean PSI of 1500. See screenshot below for all results.
-----insert screenshots

## Study Design: MechaCar vs Competition

- Step 1: Who is the competition? I'd first focus on a segment that is struggling (that MechaCar thinks should be doing better) and look into the sales database of closed lost data to determine which competitors to focus on.

For the competitors chosen, I would take a look at customer reviews to see what people are saying - pro/con against the competition. This will help narrow what attributes are important to look for in the correlation analysis. To obtain the review data you could scrape the reviews, and then use python to run text analysis. 

Example of where to scrape data: 
https://www.consumeraffairs.com/automotive/nissan_altima.html

Example of code for text analysis: https://medium.com/towards-artificial-intelligence/text-mining-in-python-steps-and-examples-78b3f8fd913b

- Step 2: I would then pull down sales data for the competition. (I'd contact the company to see if they have an API first to make it easier, or just scrape data what you need on website.) https://carsalesbase.com/us-nissan-altima/ 

- Step 3: I would then pull down the specs for the competition. You can find these on websites like this, if looking for a lot of competitors, or just scrape data from the website. https://www.carqueryapi.com/

- Step 4: I would combine all the data of the competitors and the MechaCar data into a single dataframe and perform a matrix correlation analysis using all the variables I can find to determine correlating factors of success (sales). The data I would capture would include factors such as:
        - Vehicle model
        - total revenue
        - revenue by state
        - locations sold
        - # of dealers selling the vehicle
        - MSRP 
        - safety
        - fuel efficiency
        - maintenance - frequency of breakage
        - horsepower

- Step 5: I would compile a correlation matrix to see which factors drive higher sales. I would then run a regression analysis using the lm function to compare the factors with the most correlation to revenue to determine the probability of correlation. 

After this analysis I would focus further competitive research on the factors that drive revenue and compare those features of the competiton against the MechaCar brand.

What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

Notes:
- The r-squared value predicts the accuracy (or randomness) of the linear model.
- Thhe p-value determines the probability of the analysis. 