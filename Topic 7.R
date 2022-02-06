#,Q1.
N=20
x=c(368,384,361,347,403,529,703,396,473,509,512,503,472,429,387,376,412,345,297,633)
y=c(31,33,37,39,43,61,68,42,41,49,31,29,38,41,40,38,42,45,32,50)
#Estimate,of,population,mean,by,sample,mean,estimator.
n=5
X=sample(x,5)
Y=sample(y,5)
Ybar=mean(Y)
y_tot=N*Ybar;p_tot
#Estimate,of,population,total,by,ratio,estimate,method:
Ybar_R=(mean(Y)/mean(X))*mean(x)
y_tot_R=N*Ybar_R;y_tot_R

#,Q2
N=100
xbar=1572
n=10
X=c(1707,1373,1630,1373,1376,1452,1160,1511,1628,1492)
Y=c(2116,1685,2130,1775,1795,1972,1650,1888,1947,2007)

# Estimation of population total using Ratio method.
Ybar_R=mean(Y)/mean(X)*xbar
y_tot=N*Ybar_R;y_tot
f=n/N
SY2=var(Y)
SX2=var(X)
rhat=mean(Y)/mean(X)
rhow=cor(X,Y)
MSE_Ybar_R=((1-f)/n)*(SY2+rhat^2*SX2-2*rhat*rhow*sqrt(SX2*SY2));MSE_Ybar_R
MSE_y_tot_R=N^2*MSE_Ybar_R;MSE_y_tot_R
