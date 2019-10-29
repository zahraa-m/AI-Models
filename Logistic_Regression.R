library(readr)
da <- read_csv("Desktop/LR.csv")
str(da)
x1<- da$Hours
p <- 1/(1+10^(-b0-b1*x1))

