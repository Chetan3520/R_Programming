#Topic 3: Estimation of Population Parameters in SRS
#'*Q1*
#  The following data gives the geographical area (in acres) under paddy for 58 villages. Draw 
# sample of eight villages by using SRSWOR. Based on sample drawn find the estimate of 
# 'average area per village under paddy' and estimate of its variance and 95% confidence 
# interval for 'average area per village under paddy'.

data=c(98, 19, 47, 137, 155, 270, 64, 69, 127, 292, 79, 81, 144, 104, 240, 273, 141, 56, 117, 201, 130, 58, 
       102, 170, 261, 158, 29, 102, 210, 189, 116, 46, 187, 101, 194, 93, 161, 222, 41, 127, 179, 223, 33, 
       114, 76, 96, 78, 88, 137, 114, 56, 108, 179, 318, 58, 58, 76, 272)
# Population mean
y_bar=mean(data)
N=length(data)
n=8
s1=sample(data,n)
s1
sy2=var(data)
#Estimate of the population mean Using sample(Average area per village Paddy)
Y_bar=mean(s1)
var_Y_bar=((N-n)/(n*N))*sy2 #SRSWOR
SE_Y_bar=sqrt(var_Y_bar)
t=qt(0.05/2,n-1,lower.tail = FALSE)
LL=Y_bar-t*SE_Y_bar
UL=Y_bar+t*SE_Y_bar
data.frame(LL,UL,y_bar)
# Estimated Variance of Y_bar and Estimated Standard Error of Y_bar
SY2=var(s1)
Est_var_Y_bar=((N-n)/(n*N))*SY2
Est_SE_Y_bar=sqrt(Est_var_Y_bar)
# Estimated confidence Interval for y_bar
LL=Y_bar-t*Est_SE_Y_bar
UL=Y_bar+t*Est_SE_Y_bar
data.frame(LL,UL,y_bar)
# --------------------------------------------------
#'* Q2.*
# The following are the monthly expenditures of 25 households selected randomly by using 
# SRSWOR from a village having N = 400 households.
#  Obtain an unbiased estimate of monthly average expenditure per household in the village. 
# Also, provide an estimate of 98% C.I. for the monthly average expenditure per household.

sample=c(1698, 1889, 1910, 1768, 1852, 1837, 1811, 1762, 1722, 1851, 1717, 1715,
       1791, 1908, 1801, 1800, 1893, 1771, 1709, 1772, 1667, 1690, 1811, 1816, 1731)
N=400
n=25
# an unbiased estimate of monthly average expenditure per household in the village
# Est Population mean
Y_bar=mean(sample)
# an estimate of 98% C.I. for the monthly average expenditure per household
SY2=var(sample)
Est_var_Y_bar=(N-n)/(n*N)*SY2
Est_SE_Y_bar=sqrt(Est_var_Y_bar)
t=qt(0.02/2,n-1,lower.tail = FALSE)
LL=Y_bar-t*Est_SE_Y_bar
UL=Y_bar+t*Est_SE_Y_bar
data.frame(LL,UL)
# ---------------------------------------------
#'*Q3*
# A SRS of 30 households was drawn from a city area containing 14,848 households. The 
# number of persons per household in sample was as follows
# Estimate the total number of people in the area and compute the probability that this 
# estimate is within ± 10 % of the true value.

sample=c(5,6,3,3,2,3,3,3,4,4,3,2,7,4,3,5,4,4,3,3,4,3,3,1,2,4,3,4,2,4)
N=14848
n=30
Y_bar=mean(sample)
SY2=var(sample)
# Est of total no of people.
yt_hat=N*Y_bar
#C.I for Est of total no of people.
var_Y_bar=(N-n)/(N*n)*SY2
var_yt_hat=(N^2)*var_Y_bar
SE_yt_hat=sqrt(var_yt_hat)
# p{(|yt_hat-yt|/SE_ythat)<=(0.1*yt/SE_yt_hat)}
# let 
a=0.1*yt_hat/SE_yt_hat
p=pnorm(a)-pnorm(-a);p

  

# ----------------------------------------------------
# The following table shows the weekly family income 
# (X )
# and weekly family expenditure on 
# food 
# (Y )
# in SRS of 30 low-income families. From this sample estimate the mean weekly 
# expenditure on food per family and the percentage of income spent on food.

exp=c(143,208,227,305,412,282,242,300,242,444,134,198,294,271,222,377,226,360,206,277,259,233,398,168,378,348,287,630,195,216)

n=length(exp);n
# Est mean  expense per weak of the family
Ybar=mean(exp);Ybar
inco=c(620,620,870,650,580,920,880,790,830,620,630,620,600,750,900,750,690,830,850,730,660,580,770,690,650,770,690,950,770,690)
# Average weakly income of the family
Xbar=mean(inco);Xbar
# weakly percentage of the income spent of 
Ybar/Xbar
