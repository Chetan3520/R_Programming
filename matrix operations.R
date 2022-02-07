a=matrix(c(3,2,4,5,3,5,4,2,5),byrow=TRUE,ncol=3);a
#matrix multiplication;(Matrix cross product)
a_square=a%*%a;a_square

# Exterior product of a and b
a=matrix(c(3,2,4,5,3,5,4,2,5),byrow=TRUE,ncol=3)
b=matrix(c(1,-1,2,0,10,-1,2,3,20),byrow=T,ncol=3)
a%o%b

#power of the matrix in the R
library(expm)
a%^%2


#determinant of the matrix
det(a)

#Invese of the matrix
solve(a)

# Eigen value and Eigen vector of the matrix
E=eigen(a)
cat('Eigen values are:' ,round(E$values ))
print('Eigen vectors are: ' )
round(E$vectors)

#rank of the matrix:
qr(a)$rank  #qr() use for the decomposition of the matrix.
#OR
library(Matrix)
rankMatrix(a)

#Transpose of the matrix
t(a)

#diagonal entries of the matrix
diag(a)

#solution of the SOLE
R=matrix(c(10,-1,2,0,10,-1,2,3,20),byrow=T,ncol=3)
b=c(4,3,7)
qr.solve(R,b)


#Row and columns operations
R=matrix(c(10,-1,2,0,10,-1,2,3,20),byrow=T,ncol=3);R

# changing the first row by second row
R1=R
R[1,]=R1[2,]
R[2,]=R1[1,]
R















