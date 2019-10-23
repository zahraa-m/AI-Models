#simple linear regression from scratch 
x <- c(1, 2, 4)
y <- c(2, 1, 3)

#find the regression line y=mx+b
# 1- calculate m from data above (x,y)
ex_x <- sum(x) / length(x)
ex_y <- sum(y) / length(y)
sq_ex_x <- sum(x^2) / length(x)
ex_xy <- sum(x*y) / length(x)
m <- (ex_x * ex_y - ex_xy) / ((ex_x)^2 - sq_ex_x)
m <- round (m, digits = 4)
# 2- calculate b 
b <- round(ex_y - m * ex_x)

#print the regression line:
sprintf('y= %s + %s * x', b, m)

# 3- calculte squared error 
sq_err <- sum((y-m*x-b)^2)
sprintf('The squared error is %s', sq_err)

#plot data and regression line
x1 <- 0:5
plot(x,y, col="#0300FF")
lines(x1, b+m*x1, type = "p", col ="red")

#rewrite linear regression but with lm function
li_fun <- lm(y ~ x)
summary(li_fun)
#plot regression line
abline(li_fun)


