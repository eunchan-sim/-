# 1
myvar1 <-  matrix(1:10, nrow=5, ncol=2)
myvar1 = mytranspose(myvar1)
predict1 <- matrix(1:10, nrow=2, ncol=5, byrow=T)
## asserEqualTest1
all.equal(myvar1, predict1)

myvar1 <-  matrix(NA, nrow=0, ncol=0)
myvar1 <-  matrix(c(1,2), nrow=1, ncol=2)
myvar1 <-  matrix(c(1,2), nrow=2, ncol=1)


# 2
myvar2 <- c(1,2,NA,3)
Predict2 <- c(1,2,NA,3)
predict2 <- matrix(Predict2, nrow=1)
## asserEqualTest2
all.equal(mytranspose(myvar2),predict2)

myvar2 <- c(NA)
myvar2 <- c()


# 3
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)
mytranspose(mydata3)
predict3 <- matrix(c("1","2","3","4","red","white","red",NA, "TRUE","TRUE","TRUE","FALSE"),
                      nrow=3, ncol=4,byrow=T)
## asserEqualTest3
all.equal(mytranspose(mydata3),predict3)
