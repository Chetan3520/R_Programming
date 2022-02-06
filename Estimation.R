y=c(1698, 1889, 1910, 1768, 1852, 1837, 1811, 1762, 1722, 1851, 1717, 1715,
    1791, 1908, 1801, 1800, 1893, 1771, 1709, 1772, 1667, 1690, 1811, 1816, 1731)
Y_bar=mean(y);y_bar  #Estimate of the population mean.
n=length(y);n
N=400
sy_2=var(y);sy_2     
Est_var_Ybar=(1/n-1/N)*sy_2
Est_SE_Ybar=sqrt(Est_var_Ybar);Est_SE_Ybar #Estimate of standard Error SRSWR.
t=qt(0.02/2,n-1,lower.tail = F)
LL=Y_bar-t*Est_SE_Ybar
UL=Y_bar+t*Est_SE_Ybar
cbind(LL,UL)
# ______________________________________________
y=c(5, 6, 3, 3, 2, 3, 3, 3, 4, 4, 3, 2, 7, 4, 3,5, 4, 4, 3, 3, 4, 3, 3, 1, 2, 4, 3, 4, 2, 4)
n=length(y)
N=14848
yt_hat=round(N*mean(y));yt_hat  #Estimate population of the people.
sy_2=var(y)
a_hat=0.1*yt_hat/sqrt(N*(N-n)/n*sy_2)
a_hat
pnorm(a_hat,lower.tail = T)-pnorm(-a_hat,lower.tail = T)
# ---------------------------------------------
#Determination of the Sample size.
e=20
sy_2=10000
N=2000
alpha=0.05
z=qnorm(alpha/2,lower.tail = F)
a=z*sqrt(sy_2)/e
n=a^2/(1+a^2/N)
n
# ..................
E=10:20
n1=c(rep(0,10))


for(i in 10:20){
  
  z=qnorm(alpha/2,lower.tail = F)
  a=z*sqrt(sy_2)/i
  n=a^2/(1+a^2/N)
  n1[(i+1)-i]=n
  
}
cbind(E,n1)


# _____________________________________





























