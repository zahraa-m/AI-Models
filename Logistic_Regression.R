library(readr)
da <- read_csv("Desktop/LR.csv")
str(da)
n <- da$Pass
x <- da$Hours

f<-numeric()
s<-numeric()

likelihood <- function(b0, b1){
  p <- 1/(1+10^(-b0-b1*x))
  for (i in 1:20) {
    if (n[i]==1){
      f<- append(f,p[i])
      
    } else{
      s <- append(s,p[i])
      s
    }
    
  }
  f<-log(f)
  s<-log(s)
  -sum(f+s)
}

#install.packages('stats4')
library(stats4)
library(methods)
mle(minuslogl = likelihood, start = list(b0 = 0.2, b1 = 0.3), method = "L-BFGS-B")

