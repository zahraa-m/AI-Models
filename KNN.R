#creating data for KNN
x <- c(7,7,3,1)
y <- c(7,4,4,4)
z <- c("Bad", "Bad", "Good", "Good")
da_se <- data.frame(type=x, color=y, taste=z)

#new data point to test KNN
td <- c(3,7)

#building KNN from scratch, by using euclidean distance
ds <- sqrt(((x-td[1])^2)+((y-td[2])^2))
ra <- rank(ds)
da_se <- data.frame(type=x, color=y, taste=z, distance=ds, rank=ra)
da_se
ta <-which.min(ra)
sprintf("the new data point classified as %s", z[ta])


library(readr)
da <- read_csv("Desktop/data.csv")
da
train_d <-da[1:3, ]
train_d
test_d <- da[4, ]
cl_d <- da[1:3, 3]
cl_d
#Rewrite KNN by using knn function
require(class)
pre <- knn(train = train_d, test=test_d, cl=cl_d, k=1)
pre

