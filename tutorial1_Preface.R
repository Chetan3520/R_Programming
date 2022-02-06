# Data types in the R
# 1)Character
# 2)Numeric
# 3)Logical
# 4)Complex
x="Chetan";typeof(x)
y="123";typeof(y)#character must be written in the ''/"" 
z=123;class(z)  #so we also can use class() to know the data type
t=TRUE;typeof(t)
#____________________________________________________________________
# Operators in the R
# 1)Assignment Operator:=,<-,>-
#2)Arithmetic Operator:+,-,/,%,*
#3)Relational Operator:>,<,<=,>=,==,!=
#4)Logical Operator:&,|
x=10;y=15
a=x+y;a
a=x-y;a
a=x/y;a
print(x>y)
print(y<z)
print((x & y)<z)
print(x|y<z)

#__________________________________________________________________
#Data Structure in the R
# 1)vectors
# 2)array
# 3)list
# 4)matrix
# 5)factor
# 6)data_frame

#`````````````````````````````````````````````````
# 1]VECTOR:Linear Homogeneous Data Structure

# Type of Vector
#I)Numeric Vector 
#II)Character Vector
#III)Logical Vector
vect=c(1,24,4);vect
class(vect)
v2=c('a','b','c');v2
class(v2)
v3=c(x>y,y<z,z>x);v3
class(v3)

#PRECEDENCE OF VECTOR TYPE:
#due to Homogeneous property of the vector it contains only one type of data 
#if mix data store in the vector it convert the data into one type with precedence.
#character > Numeric > Logical
#.......
#as character datatype has higher precedence, all the data by default will convert in the character.
mixbag1=c(1,2,3,4,c(letters[1:4]));mixbag1 
#Similarly about precedence (Numeric > Logical)
mixbag2=c(c(1:4),v3);mixbag2 #True and False values of v3 converted into the Numeric values(0,1).
mixbag3=c(c(1:4),c(letters[1:4]),v3);mixbag3 #all data type will converted into the character.

# VECTOR ARITHMETIC OPERATION:
x=c(1:5);x
y=c(seq(1,10,2));y
print(x+y)
print(y-x)
print(x*y)
print(x/y)
max(x);min(x);var(x);median(x)
min(x);min(y);var(y);median(y)
summary(x)  #for all the possible summary Statistics.
summary(y)

#Generating the sequence:
s=seq(from=1,to=100,by=9);s #by_default seq(1,100,9)

#INDEX VECTOR / ACCESSING THE VECTOR
vec=c(seq(5,500,12));vec
head(vec) #gives first six values.
tail(vec) #gives last six values.
n=8
head(vec,n) #first n values.
length(vec) #total values in the vector
vec[39] #39th element in the vector.
vec[23:30] #Elements from 23 to 30
vec[c(5,10,42)]# 5th ,10th and 42th no elements in the vector.
vec[-1];vec #deleted first element from vector ie 5.
vec[-seq(1:5)];vec #first 5 elements got delete.

#````````````````````````````````````````````````````
#2]LIST:
#One Dimensional Linear Heterogeneous Data Structure.
l=list(c(letters[1:4]),1:4,TRUE,FALSE,TRUE);l
# accessing the vectors from the :
l[[1]];class(l[[1]])
l[[2]];class(l[[2]])
l[[3]];class(l[[3]])
#accessing particular elements:
l[[2]][3]
l[[1]][1]
#``````````````````````````````````````````````````````
#3]matrix:
x=c(23,34,56,7,55,34,56,2,3)
m1=matrix(c(seq(1,27,3)),ncol=3 , nrow=3,byrow=TRUE);m1
m2=matrix(x,ncol=3,nrow = 3,byrow = TRUE);m2
##ncol:no of columns
#byrow : take the elements from the vector row wise.
dim(m1) #size/ Dimension of the matrix.
t(m1) #Transpose of the matrix.

# Matrix Multiplication:
new1=m1%*%m2;new1


#Accessing / Indexing the elements from the matrix.
m1[1,] #first row of the m1 matrix.
m1[,3] #third column of the m1 matrix.
m2[3,1] #Element in third row and first column.
m1[2,2]  #Element in second row and second column.

#Partition of the matrices:
new=cbind(m1,m2);new #Combining of the matrix by column wise.
u=new[,-3];u

#````````````````````````````````````````````````````````````

#4]Array:
#Multidimensional Heterogeneous Data structure.
a=array(c(1:12),dim=c(3,2,2));a

#accessing the elements.
a[1,2,1]

#`````````````````````````````````````````````````````
#5]Factor and Order Factor.
#Factors are the data objects which are used to categorize the data and stored it as levels.
factor(c("blue","red","red","yellow","blue",'red'))
factor(c('M','F','F','M','F','M','M'),levels = c("M","F")) #Ordered Factor.

#``````````````````````````````````````````````````````````````

#6]Data Frame.
#Two Dimensional heterogeneous Data Structure.
name=c('Chetan','Sagar','Yogesh')
Language=c('R','Java','Python')
age=c(21,20,19)
df=data.frame(name,Language,age);df
#Accessing the row and columns of the data frame:
df$name #accessing the row 'name'

#Accessing the Inbuilt data sets or data frame :
data("mtcars") #Loading the data
View(mtcars)  #View the data set.
attributes(mtcars) #to see all col and row names.
head(mtcars$disp) #to see first five values of the disp col.
mean(mtcars$mpg)
var(mtcars$mpg)
summary(mtcars$mpg) #summary statistics of the data frame.
str(mtcars)
table(iris$Species) #gives frequency of the each levels of atribute.
#---------------------------------------------------------------
# Many functions will have a long list of arguments. To see the arguments of a function, use
# the args() function.
args(pnorm)
# To know the working directory.
getwd()






