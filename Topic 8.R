# Q1
xbar=988.75
N=12
n=5
X=c(1054,973,1089,1054,894)
Y=c(10316,7025,10512,8963,8783)
# Estimates of pop mean by ratio and reg method
Ybar_R=mean(Y)/mean(X)*xbar;Ybar_R
beta_hat=cov(X,Y)/var(X)
Ybar=mean(Y)
Ybar_Reg=Ybar+beta_hat*(xbar-mean(X));Ybar_Reg
data.frame(Ybar_R,Ybar_Reg)
f=n/N
SY2=var(Y)
SX2=var(X)
rhat=mean(Y)/mean(X)
rhow=cor(X,Y)
MSE_Ybar_R=(1-f)/n*(SY2+rhat^2*SX2-2*rhat*rhow*sqrt(SX2*SY2));MSE_Ybar_R
MSE_Ybar_Reg=(1-f)/n*SY2*(1-rhow^2);MSE_Ybar_Reg
data.frame(MSE_Ybar_R,MSE_Ybar_Reg)
re=MSE_Ybar_R/MSE_Ybar_Reg;re

#,Q3
N1=c(22,53,43,50,73,65,71,24,21,36,72,68,59,43,76)
N2=c(18,47,29,47,62,71,75,49,72,43,49,64,72,35,58)
N3=c(27,38,37,41,58,69,31,43,47,51,56,76,67,71,47)
N4=c(28,29,47,51,47,59,21,75,72,39,69,57,78,40,34)
l=list(N1,N2,N3,N4)
Ybar_h=sapply(l,mean)
Sh2=sapply(l, var)
Y_double_bar=mean(Ybar_h)
n=4
M=15



