# Topic 5: Stratified random sampling & estimation of population parameters
#Q1
# Consider a population with N=250 and four strata with sizes
# ( , , , ) N1 N2 N3 N4
# = (50,30,100,70) . Draw stratified random sample of size of n=25 with respective sample 
# sizes for four strata as 
# ( , , , ) (5,3,12, 5). 
N=250
Nh=c(50,30,100,70) 
wh=Nh/N
nh=c(5,3,12, 5)
N1=1:50
N2=51:80
N3=81:180
N4=181:250
# length(N4)
s1=sample(N1,5)
s2=sample(N2,3)
s3=sample(N3,12)
s4=sample(N4,5)
l=list(s1,s2,s3,s4)
Y_bar_h=sapply(l,mean)
Sh2=sapply(l,var)
Y_bar_st= sum(wh*Y_bar_h)
Est_var_Y_bar_st=sum((1/nh-1/Nh)*wh^2*Sh2)
Est_SE_Y_bar_st=sqrt(Est_var_Y_bar_st)
z=qnorm(0.05/2,lower.tail = F)
LL=Y_bar_st-z*Est_SE_Y_bar_st
UL=Y_bar_st+z*Est_SE_Y_bar_st
data.frame(LL,UL,Y_bar_st)
# ______________________________________________________________

# Q2
Nh=c(1000,1500,2500)
nh=c(10,15,20)
N=sum(Nh)
wh=Nh/N
s1=c(5, 4, 1, 2, 4, 3, 7, 5, 0, 3)
s2=c(11, 9, 13, 9, 4, 5, 5, 14, 8, 9, 11, 7, 10, 14, 7)
s3=c(22, 16, 18, 18, 23, 20, 20, 19, 20, 16, 21, 20, 26, 20, 26, 18, 21, 17, 22, 21)
l=list(s1,s2,s3)
Y_bar_h=sapply(l,mean)
Sh2=sapply(l, var)
ESt_Y_bar_st=sum(Y_bar_h*wh)
Est_var_Y_bar_st=sum((1/nh-1/Nh)*wh^2*Sh2)
Est_SE_Y_bar_st=sqrt(Est_var_Y_bar_st)
z=qnorm(0.05/2,lower.tail = F)
LL=Y_bar_st-z*Est_SE_Y_bar_st
UL=Y_bar_st+z*Est_SE_Y_bar_st
data.frame(LL,UL,Y_bar_st)
# ___________________________________________________________________
#Q3
Nh=c(16,48)
nh=c(5,15)
N1=c(799,773,778,734,588,577,507,507,457,438,415,401,387,381,324,315)
N2=c(314,298,296,258,256,243,238,237,235,235,216,208,201,192,180,179,
     172,172,163,162,161,159,153,144,138,138,138,138,136,132,130,126,
     121,120,119,118,118,116,116,113,113,110,110,108,106,104,101,100)
N=sum(Nh)
wh=Nh/N
s1=sample(N1,5)
s2=sample(N2,15)
l=list(s1,s2)
Y_bar_h=sapply(l,mean)
Sh2=sapply(l, var)
Est_Y_bar_st=sum(wh*Y_bar_h)
Est_var_Y_bar_st=sum((1/nh-1/Nh)*wh^2*Sh2)
Est_SE_Y_bar_st=sqrt(Est_var_Y_bar_st)
z=qnorm(0.1/2,lower.tail = F)
LL=Y_bar_st-z*Est_SE_Y_bar_st
UL=Y_bar_st+z*Est_SE_Y_bar_st
data.frame(LL,UL,Y_bar_st)
# _____________________________________________
Nh=c(40,35,35,30)
nh=c(8,5,7,5)
N=sum(Nh)
wh=Nh/N
s1=c(15.5, 14.5, 17.5, 20.5, 21.5, 20, 16, 22 )

s2=c(23.5, 20.5, 24.5, 26.5, 26)
s3=c(24.5, 29.5, 27.5, 24.5, 28, 23, 28.5)
s4=c(25.5, 30.5, 31.5, 28.5, 33 )
l=list(s1,s2,s3,s4)
Y_bar_h=sapply(l,mean)
Sh2=sapply(l, var)
Est_Y_bar_st=sum(wh*Y_bar_h)
Est_var_Y_bar_st=sum((1/nh-1/Nh)*wh^2*Sh2)
Est_SE_Y_bar_st=sqrt(Est_var_Y_bar_st)
z=qnorm(0.05/2,lower.tail = F)
LL=Est_Y_bar_st-z*Est_SE_Y_bar_st
UL=Est_Y_bar_st+z*Est_SE_Y_bar_st
data.frame(LL,UL,Est_Y_bar_st)