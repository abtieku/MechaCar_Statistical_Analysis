# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

- Here is a screenshot of the output:
  ![](./01_Demo/Resources/del1.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?    
  - Vehicle length
  - Ground clearance
  
- Is the slope of the linear model considered to be zero? No
  
  - Why or why not? Because the p-value is much smaller than our assumed significance level.
  
- Does this linear model predict mpg of MechaCar prototypes effectively?  Yes, moderately.
  
  - Why or why not? The adjusted r-squared value is 0.6825, which according to Pearson's Correlation table, the strength of correlation is moderate.

## Summary Statistics on Suspension Coils

- Here is a screenshot of the Total Summary Table:
    ![](./01_Demo/Resources/total_summary.png)  
- Here is a screenshot of the Lot Summary Table:
   ![](./01_Demo/Resources/lot_summary.png)  
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? 
    - For all manufacturing lots in total, yes.  
    - For each lot individually, no. 
- Why or why not? 
    - The variance for all lots is 62.29356 PSI; however, Lot3 by itself exceeds that. It has a variance of 170.2861224 PSI.

## T-Tests on Suspension Coils
- Here is a screenshot of the mean:
 ![](./01_Demo/Resources/simple_mean.png)  
- Here is a screenshot of Lot1:
 ![](./01_Demo/Resources/lot1.png)  
- Here is a screenshot of Lot2:
![](./01_Demo/Resources/lot2.png)  
- Here is a screenshot of Lot3:
![](./01_Demo/Resources/lot3.png)  
- The t-tests showed:
   - Lot1 had a p-value of 0.04, which is a normal significance level.
   - Lot2 had a p-value of 0.03 (rounded), which is between a normal and high significance level.
   - Lot3 had a p-value of .35 (rounded) is extremely low significance level.


## Study Design: MechaCar vs Competition
This study will address the cost of maintenance.

- Null hypothesis: The cost of maintenance of the MechaCar is not greater than the cost of maintenance of the competition. 

- Statistical test to be used: One sample t-test.

- Reasoning for the chosen statistical test: We need to find out if there is a statistical difference between the mean of a sample dataset and a hypothesized, potential population dataset. 

- Data needed to run the statistical test:
	
	- Cost of maintenance, which can include (not an exhaustive list)
		
		- Oil changes and related costs
		- Tires, brakes and related costs
		- Transmission and related costs
		- Other
		
		
