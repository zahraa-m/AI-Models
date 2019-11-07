#loading data
library(readr)
da <- read_csv("Desktop/m_f.csv")
str(da)
se <- da$person
he <- da$height
we <- da$weight
fo <- da$footsize


