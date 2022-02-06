#Topic:6
#Q1
N_h=c(50000,35000,25000)
n_h=c(2000,1500,1500)
w_h=N_h/sum(N_h)
a_h=c(1050,790,450)
p_h_hat=a_h/n_h

p_hat_st=sum(w_h*p_h_hat)
cat("Estimste of population proportion is",p_hat_st)
b_h=(N_h-n_h)/(N_h*(n_h-1))
var_P_st_hat=sum(w_h^2*b_h*p_h_hat*(1-p_h_hat))
SE_P_st_hat=sqrt(var_P_st_hat)
cbind(p_hat_st,SE_P_st_hat)
# ------------------------------------------------------------------------
  
#Q2
N_h=c(18260,4315,2233,1057,567)
Ybar_h=c(100,250,500,1760,2250)
S_h=c(80,200,600,1900,2500)
C_h=c(6,9,10,12,15)
n=600
N=sum(N_h)
W_h=N_h/N
Ybar_st=sum(W_h*Ybar_h);Ybar_st
# To find var(Ybar) under SRSWOR
n=600;
Sy_2=1/(N-1)*(sum((N_h-1)*S_h^2)+sum(N_h*(Ybar_h-Ybar_st)^2));Sy_2
Var_Ybar_SRSWOR=(1/n-1/N)*Sy_2;Var_Ybar_SRSWOR
#To find Var(Ybar_st)under Proportional Allocation
n_h_1=n*N_h/N;n_h_1
Var_ybar_st_prop=(1/n-1/N)*sum(W_h*S_h^2);Var_ybar_st_prop
#To find Var(Ybar_st)under Neyman's optimum Allocation
n_h_2=n*W_h*S_h/sum(W_h*S_h);n_h_2
Var_ybar_st_Ney_opt=1/n*(sum(W_h*S_h))^2-1/N*sum(W_h*S_h^2);Var_ybar_st_Ney_opt


n_h=n*N_h*S_h/sqrt(C_h)/sum(N_h*S_h/sqrt(C_h))
C=6000;c_0=1500
n=(C-c_0)*sum(W_h*S_h/sqrt(C_h))/(sum(W_h*S_h*sqrt(C_h)));n
n=round(n)
Var_Ybar_st_Ney_opt_2=1/n*(sum(W_h*S_h))^2-1/N*sum(W_h*S_h^2);Var_Ybar_st_Ney_opt_2

#Relative efficiency 
RE_1=Var_Ybar_SRSWOR/Var_ybar_st_prop;RE_1
RE_2=Var_ybar_st_prop/Var_ybar_st_Ney_opt;RE_2

#Question=3
N_h=c(12,24,19,13,9)
a1=c(3.5,2.7,1.1,1.9)
a2=c(2.4,6.9,3.7,2.8,3.4,2.6)
a3=c(1,1.3,2.9,1.6,3.4)
a4=c(1,0,2.3,0.5)
a5=c(5.8,4.9)
l=list(a1,a2,a3,a4,a5)
n_h=unlist(lapply(l,length));n_h
Y_bar_h=unlist(lapply(l,mean));Y_bar
Sh_2=unlist(lapply(l,var));Sh_2
#Est of Population mean
N=sum(N_h)
W_h=N_h/N
Ybar_st=sum(W_h*Y_bar_h)
est_var_Ybar_st=sum((1/N_h-1/N_h)*W_h^2*Sh_2)
est_var_Ybar_st_prop=(1/sum(n-h)-1/N)*sum(W_h)

