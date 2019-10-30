library(readr)
da <- read_csv("Desktop/LR.csv")
str(da)
n <- da$Pass
x <- da$Hours


likelihood <- function(b0, b1){
  p <- 1/(1+10^(-b0-b1*x))
  if (n==0){
    f <- 1-p
    f-log <- log(f)
    f-log
  } else{
    s-log <- log(p)
    s-log
  }
  -sum(s-log+f-log)
}

