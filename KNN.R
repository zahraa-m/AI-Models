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
data.frame(type=x, color=y, taste=z, distance=ds, rank=ra)
ta <-which.min(ra)
sprintf("the new data point classified as %s", z[ta])


#Rewrite KNN by using knn function
library(readr)
da <- read_csv("Desktop/data.csv")
train_d <-da[1:4, 1:2]
require(class)
pre <- knn(train = train_d, test=td, cl=z, k=1)
pre

