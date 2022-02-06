#Que.1
p=1:100
SRSWR=sample(p,20,T)
SRSWR
SRSWOR=sample(p,20)
SRSWOR
x=1:6
px=c(0.1,0.2,0.25,0.25,0.15,0.5)
s=sample(x,10,T,px);s

#Que.2
ybar=3   #population mean
r=rpois(10000,3)
R1=sample(r,100)
R2=sample(r,100)
R3=sample(r,100)
R4=sample(r,100)
R5=sample(r,100)
#Sample mean
YbarR1=mean(R1);YbarR1   
YbarR2=mean(R2);YbarR2
YbarR3=mean(R3);YbarR3
YbarR4=mean(R4);YbarR4
YbarR5=mean(R5);YbarR5
#Standard error
SE_R1=abs(ybar-YbarR1);SE_R1
SE_R2=abs(ybar-YbarR2);SE_R2
SE_R3=abs(ybar-YbarR3);SE_R3
SE_R4=abs(ybar-YbarR4);SE_R4
SE_R5=abs(ybar-YbarR5);SE_R5

