#load dataset LR
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
      f<- append(f,n[i])
      
    } else{
      s <- append(s,n[i])
      s
    }
    
  }
  
  f<-log(f)
  s<-log(s)
  -sum(f+s)
}

