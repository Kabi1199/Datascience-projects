#Reading the data into R 
Data<-read.csv("ANES_short.csv")
head(Data)
#One sample t test
set.seed(123)
# Access the column named fttrump
Data$fttrump
#Hypothesis test
#Ho=mu=80
#Run the one sample t.test
t.test(Data$fttrump,mu=80)
#. Test Statistic (t):
#t = -39.421: This is the t-statistic, which represents how far the sample mean is from the hypothesized population mean, relative to the variability in the sample. A large negative value like this indicates that the sample mean is significantly lower than the hypothesized mean.
#. Degrees of Freedom (df):
  #df = 1196: This is the number of observations in your sample minus one. It is used to determine the distribution of the t-statistic.
 #p-value:
  #p-value < 2.2e-16: This is the probability of observing a test statistic at least as extreme as the one computed, assuming the null hypothesis is true. Since the p-value is extremely small (much less than the typical threshold of 0.05), we can reject the null hypothesis. This means there is strong evidence that the true population mean is not equal to 80.
# Alternative Hypothesis:
 # Alternative hypothesis: true mean is not equal to 80: This indicates you were testing whether the true mean of the population is different from 80, and the results suggest it is.
# Confidence Interval (CI):
  #95 percent confidence interval: 36.30698 to 40.44991: This interval provides a range of values within which the true population mean is likely to fall with 95% confidence. Since the entire interval is far from 80, it supports the rejection of the null hypothesis that the population mean is 80.
# Sample Mean:
  #mean of x = 38.37845: This is the sample mean, and it is approximately 38.38. This indicates that the average value of fttrump in your sample is much lower than the hypothesized population mean of 80.
#Conclusion:
  #The sample mean of fttrump is significantly different from 80 (the hypothesized population mean).
#The p-value is extremely small, providing strong evidence against the null hypothesis.
#The confidence interval indicates that the true mean is likely between 36.31 and 40.45, which does not include 80.
#Therefore, you can confidently reject the null hypothesis and conclude that the true mean of fttrump is not 80.







#Pared sample t-test between the variables fttrump and ftobama
# Access the column named ftobama
Data$ftobama
#Run the Paired sample t.test
t.test(Data$fttrump,Data$ftobama,paired=TRUE)
#The p-value is less than 0.05, providing strong evidence to reject the null hypothesis.
#The mean difference is negative (-10.23), indicating that fttrump is significantly lower than ftobama on average.
#The confidence interval suggests the true mean difference is between -14.00 and -6.47, further supporting that fttrump is lower than ftobama.
#Independent t-test to determine if there is different for male versus female on ftobama and fttrump

# Access the column named gender_name
Data$gender_name
#Run the independent t.test
t.test(Data$fttrump~gender_name,data=Data)
t.test(Data$ftobama~gender_name,data=Data)
#The p-value for fttrump is 0.01407, indicating a significant difference between males and females, while the p-value for ftobama is 0.004418, also indicating a significant difference between the two groups.
#For fttrump, males score significantly higher than females and for ftobama, females score significantly higher than males.

#Compare the variance of the male and female in fttrump and ftobama
var.test(Data$fttrump~gender_name,data=Data,alternative="two.sided")
var.test(Data$ftobama~gender_name,data=Data,alternative="two.sided")
#For both fttrump and ftobama, the variances between males and females are not significantly different, as indicated by the p-values greater than 0.05.
