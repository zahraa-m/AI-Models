library(readr)
da <- read_csv("Desktop/LR.csv")
str(da)
n <- da$Pass
x <- da$Hours

plot(x,n, xlab = "Hours", ylab = "Pass")

f<-numeric() #vector for fail, when Y(x)=0
s<-numeric() #vector for success, when Y(x)=1

likelihood <- function(b0, b1){
  e<- 2.71828
  p <- 1/(1+e^(-b0-b1*x))
  for (i in 1:length(n)) {
    if (n[i]==1){
      s<- append(s,p[i])
    } else{
      f <- append(f,p[i])
    }
    
  }
  f <- 1-f
  all_p<- c(s,f)
  all_p <- -sum(log(all_p))
  return(all_p)
}

#install stats4 package to call mle(maximum likelihood estimation) function
#install.packages('stats4')
library(stats4)
library(methods)
lor <-mle(minuslogl = likelihood, start = list(b0 = 0, b1 = 0), method = "BFGS")
summary(lor)
sprintf("The probability of passing the exam = 1 / 1 + exp (-(%s*X%s)) ", lor@coef[["b1"]], lor@coef[["b0"]])

#plotting the logistic regression
e <- 2.71828
b0 <- lor@coef[["b0"]]
b1 <- lor@coef[["b1"]]
pro= 1/(1+e^(-b0-b1*x))
pro
plot(x, pro, xlab = "Hours", ylab = "The probability of passing the exam" )

