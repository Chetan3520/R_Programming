
# introduction to different softwares and Packages.

#,Q1. Construct the following graphs of the following data
d=c(58.2,66.9,53.5,53.0,53.2,52.5,53.4,56.5,65.3,70.7
,55.3,53.4,52.1,51.5,51.5,52.4,53.3,55.5,61.2,69.6
,69.3,58.5,55.3,53.6,52.3,51.5,51.7,51.5,52.5,57.1
,63.6,68.8,68.9,60.1,55.6,53.9,53.3,53.1,53.5,53.5
,53.9,57.1,64.7,69.4,70.3,62.6,57.9,55.8,54.8,54.2
,54.6,54.3,54.8,58.1,68.1,73.3,75.5,66.4,60.5,57.7
)
d
# i)
stem(d)
# ii)
hist(d,main="Histograme")
# iii)
dotchart(d,main="dotchart")
# iv)
boxplot(d,label=c('max','Q1','Q2','Q3',' min'))

# --------------------------------------------------------
#Q2. Frequent airline travelers were asked to indicate the airline they believe offered the best overall 
# services. The four choices were American Air (A),East coast Air (E).Sum coast (C) and Great 
# Western (W).The following data were obtained
# Summarize the data using appropriate graph.
x=c('E','A','E','S','W','W','E','S','W','E','E','A','S','S','W','E','A','W','W','S','E','E','A','E','E','S','W','A','S','E','A','W','A','A','W','E','S','W')
t=table(x)
barplot(t)
# -----------------------------------------------------------------------------------
# Q3
# The fire department laboratory tested the flammability of frabric, using the same methods in five 
# different labs. The measurements are the length of the burned portion of a piece of fabric held 
# over flame for a fixed amount of time.
par(mfrow=c(3,2))

lab1=c(2.9,3.1,3.1,3.7,4.2,3.7,3.9,3.1,3.0,2.9)
lab2=c(2.7,3.4,3.6,3.2,4.1,3.8,3.8,4.3,3.4,3.3)
lab3=c(3.3,3.3,3.5,3.5,2.8,3.2,2,8.0,3.8,3.5)
lab4=c(3.3,3.2,3.4,2.7,3.3,2.9,3.2,2.9,2.6,2.8)
lab5=c(4.1,4.1,3.7,3.1,3.5,2.8,3.5,3.7,3.5,3.9)
labs=c("lab1","lab2","lab3","lab4","lab5")
boxplot(lab1,main="lab1")
boxplot(lab2,main='lab2')
boxplot(lab3,main='lab3')
boxplot(lab4,main='lab4')
boxplot(lab5,main='lab5')
# a) Compare the response of the above experiment using box plot, dot plot and interval plot
#'*lab1 has more variability as compare to the other labs*
#'*lab3 has symmetric data of lenght of burn portion of fabric*

#b) Give the above data in the form of the table.
data.frame(lab1,lab2,lab3,lab4,lab5)

#c)Combine the all data & draw histogram and identify the distribution of given data.
x=c(lab1,lab2,lab3,lab4,lab5)
hist(x)
#'*given distribution is positive skew  distribution*

#d) Draw normal probability plot of given data.
plot(density(dnorm(x,0,1)))
# -------------------------------------------------------------------
#4. The following data represent the scores obtained by 27 students in a midterm test
x=c(79,78,78,67,76,87,85,73,66,99,84,72,66,57,94,84,72,63,57,48,50,61,71,82,93,100,89)
# a) Prepare steam & leaf display of the data
# b) Calculate the range and the inter-quartile rang.
stem(x)
cat("range of the data is:",range(x)[2]-range(x)[1])
cat("Range of inter quartile range is:",quantile(x,0.75)-quantile(x,0.25))
# -----------------------------------------------------------------------------

