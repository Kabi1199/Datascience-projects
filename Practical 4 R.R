#Reading the data into R 
library(readxl)
Data<-read.csv("eda_data.csv")
head(Data)
#Fit multiple linear regression model to determine the 
#relationship between Rating and the
#independent variables avg salary, age, founded, and sector
# Fit the model
Model <- lm(Rating ~ avg_salary + age + Founded + Sector, data = Data)
summary(Model)


#Write the fitted model equation
# Extract coefficients
coefficients <- coef(Model)
coefficients
# Construct the fitted model equation
fitted_model_equation <- paste("Rating =", 
                               round(coefficients[1], 2), "+", 
                               round(coefficients[2], 6), "* avg_salary +", 
                               round(coefficients[3], 6), "* age +", 
                               round(coefficients[4], 6), "* Founded +", 
                               paste(round(coefficients[5:length(coefficients)], 6), "*", names(coefficients)[5:length(coefficients)], collapse = " + "))

# Print the fitted model equation
print(fitted_model_equation)




#Interpret the model results (where you comment on model 
#parameters, R-squared, adjust R-squared, goodness of-fit of the model)
#1.Intercept
#The intercept is 3.977, which represents the expected value 
#of the Rating when all predictors
#(avg_salary, age, Founded, and Sector) are zero.
#The expected Rating is 3.977 when all predictors are zero.
#Key Predictors:
#The coefficient for avg_salary is 0.000212, indicating that for each unit 
#increase in avg_salary, the Rating is expected 
#to increase by 0.000212, holding all other variables constant.
#However, the p-value 0.71712 suggests that this
#predictor is not statistically significant.
#The coefficient for age 0.000857 suggests a slight
# increase in Rating with age, though its marginal significance
#pvalue = 0.06285 indicates limited statistical
#reliability.
#The coefficient for Founded 0.000147 indicates
#a small but statistically significant pvalue = 0.00487
#positive effect on Rating.
#Sector coefficients show how each sector
#affects the Rating compared to the reference sector,
#with most having high p-values and
#being statistically insignificant,e.g., 
#SectorAerospace & Defense reduces Rating by 0.2982.
#2.R-squared
#The R-squared value of 0.1879 indicates that
#the model explains 18.79% of the Rating variability,
#while the adjusted R-squared of 
#0.1579 suggests that some predictors may not
#significantly contribute to the model.
#Goodness of fit
#The residual standard error of 0.5693 suggests
#a moderate fit, while the F-statistic of 6.273
#with a p-value less than 2.2e-16 
#indicates that the overall model is statistically significant.


#Test the assumptions of the model fitted in (a)
#1)Linearity
# Fit the model
Model <- lm(Rating ~ avg_salary + age + Founded + Sector, data = Data)

# Get the fitted values and residuals
Fitted_values <- Model$fitted.values

Residuals <- residuals(Model) 

# Plot residuals vs fitted values
plot(Fitted_values, residuals(Model), 
     xlab = "Fitted Values", ylab = "Residuals", 
     main = "Residuals vs Fitted Values")
#There is no correlation as points in the plot create a 
#horizontal straight line
#2)Checking Normality Assumption
Resi<-residuals(Model)
shapiro.test(Resi)
#The p-value is less than 0.05 thus the normality 
#assumption is violated
#3)Multicollinearity
library(regclass)
VIF(Model)
# The VIF is less than 10 thus this indicates there
#is no violation of assumption of Multicollinearity
#4)Serial Correlation
library(car)
durbinWatsonTest(Model)
#The p-value is greater than 0.05 thus the residual
#of the model are not autocorrelated
#5)test for Homogeneity (equality of variance of residuals)
library(lmtest)
bptest(Model)
summary(Model)
#The p-value is less than 0.05 we conclude that
#there is heteroscedasticity in the model

#Generate diagnostic plots from the model and interpret each plot
# Fit the model
Model <- lm(Rating ~ avg_salary + age + Founded + Sector, data = Data)

# Generate diagnostic plots
par(mfrow = c(2,2)) # Arrange plots in a 2x2 grid
plot(Model)
#1.Residuals vs Fitted_values
#There is random scatter indicating 
#the linear model is appropriate
#2.Normal Q-Q Plot
#The points are not falling in the 45
#degree line suggesting non-normality
#3.Scale-location plot
#The points have a funnel shaped 
#pattern suggesting heteroscedasticity
#4.Residuals vs Leverage plot
#Points are outside the Cook's distance 
#line may be influential observations













