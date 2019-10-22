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

# 2- calculate b 
b <- ex_y - m * ex_x

#3- print the regression line:
print("y= %s + %s * x", b, m)
