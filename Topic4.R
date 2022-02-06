#Que.1
N=2000
sy2=10000
e=20
a=0.05/2;a
z=abs(qnorm(a));z
n_WOR=(N*(z^2)*sy2)/((N*e^2)+(z^2*s))
n_WR=((N-1)*(z^2)*sy2)/(N*e^2)
n_WOR
n_WR

#Que.2
N=5000
e=0.1
z=abs(qnorm(0.025));z
sy_e=6 # sy/e
n_WOR=(N*(z^2)*(sy_e)^2)/(N+(z^2)*(sy_e)^2)
n_WR=((N-1)*(z^2)*(sy_e)^2)/N
n_WOR
n_WR

#Que.3
n=200
p=0.67
r=rbinom(200,1,0.67);r
phat=mean(r);phat

#Que.4
N=10000
n=100
phat=0.55
z=abs(qnorm(0.025));z
LL=phat-z*sqrt(((N-n)*phat*(1-phat))/(n*(N-1)))
UL=phat+z*sqrt(((N-n)*phat*(1-phat))/(n*(N-1)))
cbind(LL,UL)

#Que.5
N=4000
phat=30/50;phat
e=0.05*phat;e
z=abs(qnorm(0.05));z
n=(N*z^2*phat*(1-phat))/((N-1)*e^2+z^2*phat*(1-phat))
n

#Que.6
N=100000
n=1600
phat=6.4
z=abs(qnorm(0.05));z
LL=phat-z*sqrt(((N-n)*phat*(1-phat))/(n*(N-1)))
UL=phat+z*sqrt(((N-n)*phat*(1-phat))/(n*(N-1)))
cbind(LL,UL)
