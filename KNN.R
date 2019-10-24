#creating data for KNN
x <- c(7,7,3,1)
y <- c(7,4,4,4)
z <- c("Bad", "Bad", "Good", "Good")

da_se <- data.frame(type=x, color=y, taste=z)
da_se
td <- c(3,7)
td[1]
#building KNN from scratch, by using euclidean distance

ds <- sqrt(((x-td[1])^2)+((y-td[2])^2))
ds
ra <- order(ds)
da_se <- data.frame(type=x, color=y, taste=z, distance=ra)
da_se

if (ra==1){
  print("the test data is Good")
}else{
  print("test data is Bad")
}



