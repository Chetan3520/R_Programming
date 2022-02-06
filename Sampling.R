
#1)Binomial Distribution.
n=20
p=0.6
set.seed(3) # for fix the random sple after multiple run
sam=rbinom(100,n,p)
hist(sam,main='Random Number drawn from Binomial',probability=TRUE)
lines(density(sam))#for the line to the distribution.
x=0:20
points (x,dbinom(x,20,0.6),col='red',type="l")
plot(density(sam,bw=2),col="green")

# summary
m=mean(sam);v=var(sam);SD=sd(sam);med=median(sam);ra=max(sam)-mean(sam)
df=data.frame(m,v,SD,med,ra);df
quar=quantile(sam,probs = c(0.25,0.50,0.75));quar

mod=function(sam){
  u=unique(sam)
  u[which.max(tabulate(match(sam,u)))]
}
mod(sam)
summary(sam)
ls() #how many variable we use before.
rm(list=ls(all=TRUE)) #to remove all previous variable from R memory we use before..
#2)Poisson Distribution.
rate=5
set.seed(40) #any integer we can take as argument 
sam=rpois(100,lambda = rate)
hist(sam,probability=TRUE,main='Random Number drawn from Poisson')
lines(density(sam))
#summary:\
m=mean(sam);v=var(sam);SD=sd(sam);med=median(sam);ra=max(sam)-mean(sam)
df=data.frame(m,v,SD,med,ra);df
quar=quantile(sam,probs = c(0.25,0.50,0.75));quar

mod=function(sam){
  u=unique(sam)
  u[which.max(tabulate(match(sam,u)))]
}
mod(sam)
summary(sam)


#3)Geometric Distribution:
rm(list=ls(all=TRUE))
set.seed(30)
p=0.5
sam=rgeom(100,prob = 0.5)
hist(sam,probability = TRUE,main="randon no plot of Geometric Disstribution")
lines(density(sam),col='red')
#summary:\
m=mean(sam);v=var(sam);SD=sd(sam);med=median(sam);ra=max(sam)-mean(sam)
df=data.frame(m,v,SD,med,ra);df
quar=quantile(sam,probs = c(0.25,0.50,0.75));quar

mod=function(sam){
  u=unique(sam)
  u[which.max(tabulate(match(sam,u)))]
}
mod(sam)
summary(sam)


#4)Normal Distribution:
rm(list=ls(all=TRUE))
set.seed(80)
mu=10
sd=2
sam=rnorm(1000,mu,sd)
hist(sam,probability = TRUE,main="Histogram of the Normal Random Samples")
curve(dnorm(x,mu,sd),col="red",add=TRUE)
#summary:\
m=mean(sam);v=var(sam);SD=sd(sam);med=median(sam);ra=max(sam)-mean(sam)
df=data.frame(m,v,SD,med,ra);df
quar=quantile(sam,probs = c(0.25,0.50,0.75));quar

mod=function(sam){
  u=unique(sam)
  u[which.max(tabulate(match(sam,u)))]
}
mod(sam)
summary(sam)


#5)Uniform Distribution:
rm(list = ls(all=TRUE))
x=1:100
ls()
a=20
b=30
sam=runif(10000,a,b)
hist(sam,main="Histogram of the  sample of Uniform Distribution")
curve(dunif(x,a,b),col="blue")
#summary:\
m=mean(sam);v=var(sam);SD=sd(sam);med=median(sam);ra=max(sam)-mean(sam)
df=data.frame(m,v,SD,med,ra);df
quar=quantile(sam,probs = c(0.25,0.50,0.75));quar

mod=function(sam){
  u=unique(sam)
  u[which.max(tabulate(match(sam,u)))]
}
mod(sam)
summary(sam)

#Gamma Dist:
x=1:100
ls()
set.seed(23)
l=2
r=2
x=1:1000
sam=rgamma(100,l,1/r)
hist(sam,probability = TRUE)
curve(dgamma(x,l,1/r),col='red')
lines(dgamma(x,l,1/r),type="l",col='blue')
lines(dgamma(x,l,1/r),type="l",col='green')
