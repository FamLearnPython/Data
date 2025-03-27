

################ TMPRSS2-ERG - good Titration #####################################
Sample_Data <- data.frame(
  var1=c(20, 20, 20, 20, 10, 10, 10, 10, 5, 5, 5, 5, 2.5, 2.5, 2.5, 2.5, 2, 2, 2, 2, 1.25, 1.25, 1.25, 1.25, 1, 1, 1, 1, 0.63, 0.63, 0.63, 0.63),
  var2=c(19.3, 18.9, 18.0, 18.5, 10.1, 10.6, 9.2, 8.7, 4.3, 3.5, 4.0, 3.6, 2.2, 1.3, 2.3, 2.8, 2.1, 1.4, 1.7, 1.4, 1.4, 1.1, 1.8, 1.5, 0.5, 1.3, 1.0, 0.6, 0.9, 0.8, 0.7, 0.4))



# create new column for average measurement
Sample_Data$average <- rowMeans(Sample_Data) 

# create new column for difference measurement
Sample_Data$difference <- Sample_Data$var1 - Sample_Data$var2

# calculate mean difference
mean_difference <- mean(Sample_Data$difference)

# calculate upper and lower limits of the 
# Confidence interval of 90%
lower_limit <- mean_difference - 1.10*sd( Sample_Data$difference )
upper_limit <- mean_difference + 1.10*sd( Sample_Data$difference )

# load library ggplot2
library(ggplot2)

# Plot the Bland-Altmon Plot
ggplot(Sample_Data, aes(x = average, y = difference)) +
  geom_point(size=3) +
  geom_hline(yintercept = mean_difference, color= "red", lwd=1.5) +
  geom_hline(yintercept = lower_limit, color = "green", lwd=1.5) +
  geom_hline(yintercept = upper_limit, color = "green", lwd=1.5)+
  ggtitle("TMPRSS2-ERG") +
  geom_hline(yintercept = 0, color= "blue", lwd=1.5) + 
  annotate("text", x = 8, y = 0.5, label = "Bias", color = "red") +
  annotate("text", x = 8, y = 0.09, label = "Zero", color = "blue") +
  annotate("text", x = 8, y = 1.25, label = "Bias+10%", color = "black") +
  annotate("text", x = 8, y = -0.25, label = "Bias-10%", color = "black")



######Pre-Mitigation_ALK-EML##########

Sample_Data <- data.frame(
  var1=c(22.5, 22.5, 20, 20, 10, 10, 5, 5, 2.5, 2.5, 2, 2, 1.25, 1.25, 1, 1, 0.63, 0.63),
  var2=c(39.66, 40.15, 38.64, 38.65, 29.76, 30.93, 22.13, 21.19, 16.57, 13.67, 16.52, 11.08, 9.41, 10, 6.69, 6.48, 2.65, 3.74))

# create new column for average measurement
Sample_Data$average <- rowMeans(Sample_Data) 

# create new column for difference measurement
Sample_Data$difference <- Sample_Data$var1 - Sample_Data$var2

# calculate mean difference
mean_difference <- mean(Sample_Data$difference)

# calculate upper and lower limits of the 
# Confidence interval of 90%
lower_limit <- mean_difference - 1.10*sd( Sample_Data$difference )
upper_limit <- mean_difference + 1.10*sd( Sample_Data$difference )

# load library ggplot2
library(ggplot2)

# Plot the Bland-Altmon Plot
ggplot(Sample_Data, aes(x = average, y = difference)) +
  geom_point(size=3) +
  geom_hline(yintercept = mean_difference, color= "red", lwd=1.5) +
  geom_hline(yintercept = lower_limit, color = "green", lwd=1.5) +
  geom_hline(yintercept = upper_limit, color = "green", lwd=1.5)+
  ggtitle("Pre Mitigation_ALK-EML") +
  geom_hline(yintercept = 0, color= "blue", lwd=1.5) + 
  annotate("text", x = 8, y = -12, label = "Bias", color = "red") +
  annotate("text", x = 8, y = 0.5, label = "Zero", color = "blue") +
  annotate("text", x = 8, y = -5.2, label = "Bias+10%", color = "black") +
  annotate("text", x = 8, y = -18.5, label = "Bias-10%", color = "black")

######Post-Mitigation_ALK-EML##########
Sample_Data <- data.frame(
  var1=c(22.5, 22.5, 20, 20, 10, 10, 5, 5, 2.5, 2.5, 2, 2, 1.25, 1.25, 1, 1, 0.63, 0.63),
  var2=c(10.00, 10.27, 9.95, 9.57, 4.58, 5.04, 2.34, 2.49, 1.42, 1.25, 1.46, 0.92, 0.75, 0.86, 0.49, 0.49, 0.32, 0.19))



# create new column for average measurement
Sample_Data$average <- rowMeans(Sample_Data) 

# create new column for difference measurement
Sample_Data$difference <- Sample_Data$var1 - Sample_Data$var2

# calculate mean difference
mean_difference <- mean(Sample_Data$difference)

# calculate upper and lower limits of the 
# Confidence interval of 90%
lower_limit <- mean_difference - 1.10*sd( Sample_Data$difference )
upper_limit <- mean_difference + 1.10*sd( Sample_Data$difference )

# load library ggplot2
library(ggplot2)

# Plot the Bland-Altmon Plot
ggplot(Sample_Data, aes(x = average, y = difference)) +
  geom_point(size=3) +
  geom_hline(yintercept = mean_difference, color= "red", lwd=1.5) +
  geom_hline(yintercept = lower_limit, color = "green", lwd=1.5) +
  geom_hline(yintercept = upper_limit, color = "green", lwd=1.5)+
  ggtitle("Post Mitigation_ALK-EML") +
  geom_hline(yintercept = 0, color= "blue", lwd=1.5) + 
  annotate("text", x = 8, y = 4.5, label = "Bias", color = "red") +
  annotate("text", x = 8, y = 0.5, label = "Zero", color = "blue") +
  annotate("text", x = 8, y = 9, label = "Bias+10%", color = "black") +
  annotate("text", x = 8, y = -.7, label = "Bias-10%", color = "black")




######################Pre Mitigation FGFR3-TACC3

Sample_Data <- data.frame(
  var1=c(20, 20, 20, 20, 10, 10, 10, 10, 5, 5, 5, 5, 2.5, 2.5, 2.5, 2.5, 2, 2, 2, 2, 1.25, 1.25, 1.25, 1.25, 1, 1, 1, 1, 0.63, 0.63, 0.63, 0.63),
  var2=c(31.1, 30.6, 31.7, 31.1, 22.2, 21.0, 20.0, 22.8, 13.3, 13.9, 14.5, 14.0, 7.9, 8.0, 7.8, 8.3, 5.5, 5.8, 6.8, 7.1, 4.3, 4.7, 4.3, 4.4, 3.4, 3.7, 3.4, 3.7, 1.8, 1.9, 1.9, 2.7))



# create new column for average measurement
Sample_Data$average <- rowMeans(Sample_Data) 

# create new column for difference measurement
Sample_Data$difference <- Sample_Data$var1 - Sample_Data$var2

# calculate mean difference
mean_difference <- mean(Sample_Data$difference)
Perfect_titration <- 0
# calculate upper and lower limits of the 
# Confidence interval of 90%
lower_limit <- mean_difference - 1.10*sd( Sample_Data$difference )
upper_limit <- mean_difference + 1.10*sd( Sample_Data$difference )

# load library ggplot2
library(ggplot2)

# Plot the Bland-Altmon Plot
ggplot(Sample_Data, aes(x = average, y = difference)) +
  geom_point(size=3) +
  geom_hline(yintercept = mean_difference, color= "red", lwd=1.5) +
  geom_hline(yintercept = lower_limit, color = "green", lwd=1.5) +
  geom_hline(yintercept = upper_limit, color = "green", lwd=1.5)+
  ggtitle("Pre Mitigation_FGFR3-TACC3") +
  geom_hline(yintercept = 0, color= "blue", lwd=1.5) + 
  annotate("text", x = 8, y = -5.6, label = "Bias", color = "red") +
  annotate("text", x = 8, y = 0.4, label = "Zero", color = "blue") +
  annotate("text", x = 8, y = -1.19, label = "Bias+10%", color = "black") +
  annotate("text", x = 8, y = -9.8, label = "Bias-10%", color = "black")





#######################Post Mitigation FGFR3-TACC3##############


Sample_Data <- data.frame(
  var1=c(20, 20, 20, 20, 10, 10, 10, 10, 5, 5, 5, 5, 2.5, 2.5, 2.5, 2.5, 2, 2, 2, 2, 1.25, 1.25, 1.25, 1.25, 1, 1, 1, 1, 0.63, 0.63, 0.63, 0.63),
  var2=c(28.7, 29.4, 28.4, 28.6, 20.3, 20.0, 18.8, 18.0, 12.2, 12.5, 12.0, 11.5, 7.1, 6.7, 6.6, 6.8, 5.8, 6.1, 4.6, 4.8, 3.6, 3.9, 3.6, 3.6, 3.1, 2.8, 3.1, 2.8, 2.3, 1.6, 1.6, 1.5))



# create new column for average measurement
Sample_Data$average <- rowMeans(Sample_Data) 

# create new column for difference measurement
Sample_Data$difference <- Sample_Data$var1 - Sample_Data$var2

# calculate mean difference
mean_difference <- mean(Sample_Data$difference)
Perfect_titration <- 0
# calculate upper and lower limits of the 
# Confidence interval of 90%
lower_limit <- mean_difference - 1.10*sd( Sample_Data$difference )
upper_limit <- mean_difference + 1.10*sd( Sample_Data$difference )

# load library ggplot2
library(ggplot2)

# Plot the Bland-Altmon Plot
ggplot(Sample_Data, aes(x = average, y = difference)) +
  geom_point(size=3) +
  geom_hline(yintercept = mean_difference, color= "red", lwd=1.5) +
  geom_hline(yintercept = lower_limit, color = "green", lwd=1.5) +
  geom_hline(yintercept = upper_limit, color = "green", lwd=1.5)+
  ggtitle("Post Mitigation_FGFR3-TACC3") +
  geom_hline(yintercept = 0, color= "blue", lwd=1.5) + 
  annotate("text", x = 8, y = -4.5, label = "Bias", color = "red") +
  annotate("text", x = 8, y = 0.3, label = "Zero", color = "blue") +
  annotate("text", x = 8, y = -1.12, label = "Bias+10%", color = "black") +
  annotate("text", x = 8, y = -7.7, label = "Bias-10%", color = "black")













############################Corrected for Directionality########################################################



######Pre-Mitigation_ALK-EML##########

Sample_Data <- data.frame(
  var1=c(22.5, 22.5, 20, 20, 10, 10, 5, 5, 2.5, 2.5, 2, 2, 1.25, 1.25, 1, 1, 0.63, 0.63),
  var2=c(39.66, 40.15, 38.64, 38.65, 29.76, 30.93, 22.13, 21.19, 16.57, 13.67, 16.52, 11.08, 9.41, 10, 6.69, 6.48, 2.65, 3.74))

# create new column for average measurement
Sample_Data$average <- rowMeans(Sample_Data) 

# create new column for difference measurement
Sample_Data$difference <- Sample_Data$var2 - Sample_Data$var1

# calculate mean difference
mean_difference <- mean(Sample_Data$difference)

# calculate upper and lower limits of the 
# Confidence interval of 90%
lower_limit <- mean_difference - 1.10*sd( Sample_Data$difference )
upper_limit <- mean_difference + 1.10*sd( Sample_Data$difference )

# load library ggplot2
library(ggplot2)

# Plot the Bland-Altmon Plot
ggplot(Sample_Data, aes(x = average, y = difference)) +
  geom_point(size=3) +
  geom_hline(yintercept = mean_difference, color= "red", lwd=1.5) +
  geom_hline(yintercept = lower_limit, color = "green", lwd=1.5) +
  geom_hline(yintercept = upper_limit, color = "green", lwd=1.5)+
  ggtitle("Pre Mitigation_ALK-EML") +
  geom_hline(yintercept = 0, color= "blue", lwd=1.5) + 
  annotate("text", x = 8, y = 13.5, label = "Bias", color = "red") +
  annotate("text", x = 8, y = 0.5, label = "Zero", color = "blue") +
  annotate("text", x = 8, y = 20, label = "Bias+10%", color = "black") +
  annotate("text", x = 8, y = 6.5, label = "Bias-10%", color = "black") +
  theme(axis.text=element_text(size=12), axis.title=element_text(size=14,face="bold"))  


######Post-Mitigation_ALK-EML##########
Sample_Data <- data.frame(
  var1=c(22.5, 22.5, 20, 20, 10, 10, 5, 5, 2.5, 2.5, 2, 2, 1.25, 1.25, 1, 1, 0.63, 0.63),
  var2=c(10.00, 10.27, 9.95, 9.57, 4.58, 5.04, 2.34, 2.49, 1.42, 1.25, 1.46, 0.92, 0.75, 0.86, 0.49, 0.49, 0.32, 0.19))



# create new column for average measurement
Sample_Data$average <- rowMeans(Sample_Data) 

# create new column for difference measurement
Sample_Data$difference <- Sample_Data$var2 - Sample_Data$var1

# calculate mean difference
mean_difference <- mean(Sample_Data$difference)

# calculate upper and lower limits of the 
# Confidence interval of 90%
lower_limit <- mean_difference - 1.10*sd( Sample_Data$difference )
upper_limit <- mean_difference + 1.10*sd( Sample_Data$difference )

# load library ggplot2
library(ggplot2)

# Plot the Bland-Altmon Plot
ggplot(Sample_Data, aes(x = average, y = difference)) +
  geom_point(size=3) +
  geom_hline(yintercept = mean_difference, color= "red", lwd=1.5) +
  geom_hline(yintercept = lower_limit, color = "green", lwd=1.5) +
  geom_hline(yintercept = upper_limit, color = "green", lwd=1.5)+
  ggtitle("Post Mitigation_ALK-EML") +
  geom_hline(yintercept = 0, color= "blue", lwd=1.5) + 
  annotate("text", x = 8, y = -3.3, label = "Bias", color = "red") +
  annotate("text", x = 8, y = 0.4, label = "Zero", color = "blue") +
  annotate("text", x = 8, y = 1.5, label = "Bias+10%", color = "black") +
  annotate("text", x = 8, y = -8.3, label = "Bias-10%", color = "black") +
  theme(axis.text=element_text(size=12), axis.title=element_text(size=14,face="bold"))  





######################Pre Mitigation FGFR3-TACC3

Sample_Data <- data.frame(
  var1=c(20, 20, 20, 20, 10, 10, 10, 10, 5, 5, 5, 5, 2.5, 2.5, 2.5, 2.5, 2, 2, 2, 2, 1.25, 1.25, 1.25, 1.25, 1, 1, 1, 1, 0.63, 0.63, 0.63, 0.63),
  var2=c(31.1, 30.6, 31.7, 31.1, 22.2, 21.0, 20.0, 22.8, 13.3, 13.9, 14.5, 14.0, 7.9, 8.0, 7.8, 8.3, 5.5, 5.8, 6.8, 7.1, 4.3, 4.7, 4.3, 4.4, 3.4, 3.7, 3.4, 3.7, 1.8, 1.9, 1.9, 2.7))



# create new column for average measurement
Sample_Data$average <- rowMeans(Sample_Data) 

# create new column for difference measurement
Sample_Data$difference <- Sample_Data$var2 - Sample_Data$var1

# calculate mean difference
mean_difference <- mean(Sample_Data$difference)
Perfect_titration <- 0
# calculate upper and lower limits of the 
# Confidence interval of 90%
lower_limit <- mean_difference - 1.10*sd( Sample_Data$difference )
upper_limit <- mean_difference + 1.10*sd( Sample_Data$difference )

# load library ggplot2
library(ggplot2)

# Plot the Bland-Altmon Plot
ggplot(Sample_Data, aes(x = average, y = difference)) +
  geom_point(size=3) +
  geom_hline(yintercept = mean_difference, color= "red", lwd=1.5) +
  geom_hline(yintercept = lower_limit, color = "green", lwd=1.5) +
  geom_hline(yintercept = upper_limit, color = "green", lwd=1.5)+
  ggtitle("Pre Mitigation_FGFR3-TACC3") +
  geom_hline(yintercept = 0, color= "blue", lwd=1.5) + 
  annotate("text", x = 8, y = 6.7, label = "Bias", color = "red") +
  annotate("text", x = 8, y = 0.4, label = "Zero", color = "blue") +
  annotate("text", x = 8, y = 10.6, label = "Bias+10%", color = "black") +
  annotate("text", x = 8, y = 2.3, label = "Bias-10%", color = "black") +
  theme(axis.text=element_text(size=12), axis.title=element_text(size=14,face="bold"))  





#######################Post Mitigation FGFR3-TACC3##############


Sample_Data <- data.frame(
  var1=c(20, 20, 20, 20, 10, 10, 10, 10, 5, 5, 5, 5, 2.5, 2.5, 2.5, 2.5, 2, 2, 2, 2, 1.25, 1.25, 1.25, 1.25, 1, 1, 1, 1, 0.63, 0.63, 0.63, 0.63),
  var2=c(28.7, 29.4, 28.4, 28.6, 20.3, 20.0, 18.8, 18.0, 12.2, 12.5, 12.0, 11.5, 7.1, 6.7, 6.6, 6.8, 5.8, 6.1, 4.6, 4.8, 3.6, 3.9, 3.6, 3.6, 3.1, 2.8, 3.1, 2.8, 2.3, 1.6, 1.6, 1.5))



# create new column for average measurement
Sample_Data$average <- rowMeans(Sample_Data) 

# create new column for difference measurement
Sample_Data$difference <- Sample_Data$var2 - Sample_Data$var1

# calculate mean difference
mean_difference <- mean(Sample_Data$difference)
Perfect_titration <- 0
# calculate upper and lower limits of the 
# Confidence interval of 90%
lower_limit <- mean_difference - 1.10*sd( Sample_Data$difference )
upper_limit <- mean_difference + 1.10*sd( Sample_Data$difference )

# load library ggplot2
library(ggplot2)

# Plot the Bland-Altmon Plot
ggplot(Sample_Data, aes(x = average, y = difference)) +
  geom_point(size=3) +
  geom_hline(yintercept = mean_difference, color= "red", lwd=1.5) +
  geom_hline(yintercept = lower_limit, color = "green", lwd=1.5) +
  geom_hline(yintercept = upper_limit, color = "green", lwd=1.5)+
  ggtitle("Post Mitigation_FGFR3-TACC3") +
  geom_hline(yintercept = 0, color= "blue", lwd=1.5) + 
  annotate("text", x = 8, y = 5.1, label = "Bias", color = "red") +
  annotate("text", x = 8, y = 0.3, label = "Zero", color = "blue") +
  annotate("text", x = 8, y = 8.5, label = "Bias+10%", color = "black") +
  annotate("text", x = 8, y = 1.7, label = "Bias-10%", color = "black") +
  theme(axis.text.x=element_text(size = 15, angle = 0)) +
  theme(axis.text.y=element_text(size = 15, angle = 0)) +
  theme(axis.text=element_text(size=12), axis.title=element_text(size=14,face="bold"))  
  




###########################Bias +/- 10%#######################

################ TMPRSS2-ERG - good Titration #####################################
Sample_Data <- data.frame(
  var1=c(21.12029, 21.12029, 21.12029, 21.12029, 10.56015, 10.56015, 10.56015, 10.56015, 5.280073, 5.280073, 5.280073, 5.280073, 2.640037, 2.640037, 2.640037, 2.640037, 2.112029, 2.112029, 2.112029, 2.112029, 1.320018, 1.320018, 1.320018, 1.320018, 1.056015, 1.056015, 1.056015, 1.056015, 0.660009, 0.660009, 0.660009, 0.660009),
  var2=c(21.5403, 20.7879, 22.0283, 21.4541, 11.73, 10.1988, 11.0571, 13.3409, 5.7178, 6.4696, 5.9129, 5.7902, 2.8517, 3.7405, 2.5381, 3.5245, 1.9231, 2.3428, 2.6, 2.7329, 2.037, 1.7041, 1.5821, 1.584, 1.2363, 1.4189, 1.0127, 1.0343, 0.9548, 0.7458, 0.5332, 0.7995))



# create new column for average measurement
Sample_Data$average <- rowMeans(Sample_Data) 

# create new column for difference measurement
Sample_Data$difference <- Sample_Data$var2 - Sample_Data$var1

# calculate mean difference
mean_difference <- mean(Sample_Data$difference)

# calculate upper and lower limits of the 
# Confidence interval of 90%
lower_limit <- mean_difference - 1.10*sd( Sample_Data$difference )
upper_limit <- mean_difference + 1.10*sd( Sample_Data$difference )

# load library ggplot2
library(ggplot2)

# Plot the Bland-Altmon Plot
ggplot(Sample_Data, aes(x = average, y = difference)) +
  geom_point(size=3) +
  geom_hline(yintercept = mean_difference, color= "red", lwd=1.5) +
  geom_hline(yintercept = lower_limit, color = "green", lwd=1.5) +
  geom_hline(yintercept = upper_limit, color = "green", lwd=1.5)+
  ggtitle(" SNV_NFE2L2") +
  geom_hline(yintercept = 0, color= "blue", lwd=1.5) + 
  annotate("text", x = 12, y = 0.5, label = "Bias", color = "red") +
  annotate("text", x = 8, y = 0.09, label = "Zero", color = "blue") +
  annotate("text", x = 8, y = 1.2, label = "Bias+10%", color = "black") +
  annotate("text", x = 8, y = -0.15, label = "Bias-10%", color = "black")


