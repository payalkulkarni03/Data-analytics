library(datasets)
library((help="datasets"))
data("iris")
names(iris)
dim(iris)
View(iris)
#Min
min(iris$Sepal.Length)
min(iris$Sepal.Width)
min(iris$Petal.Length)
min(iris$Petal.Width)
#Max
max(iris$Sepal.Length)
max(iris$Sepal.Width)
max(iris$Petal.Length)
max(iris$Petal.Width)
#Range
range(iris$Sepal.Length)
range(iris$Sepal.Width)
range(iris$Petal.Length)
range(iris$Petal.Width)
#Standard Deviation
sd(iris$Sepal.Length)
sd(iris$Sepal.Width)
sd(iris$Petal.Length)
sd(iris$Petal.Width)
#Variance
var(iris$Sepal.Length)
var(iris$Sepal.Width)
var(iris$Petal.Length)
var(iris$Petal.Width)
#Quantile
quantile(iris$Sepal.Length)
quantile(iris$Sepal.Width)
quantile(iris$Petal.Length)
quantile(iris$Petal.Width)
#Histogram
hist(iris$Sepal.Length,main ="Data",xlab ="sepal length",xlim = c(3.5,8.5),col = "red")
hist(iris$Sepal.Width,main = "Data",xlab = "sepal length",col = "skyblue",breaks = 3,border = "green",las=2)
hist(iris$Petal.Length,main = "Data",xlab = "petal length",col ="skyblue",breaks = 3,border = "green",las=2)
hist(iris$Petal.Width,main = "Data",xlab = "petal width",col ="skyblue",breaks = 3,border = "green",las=2)
#Boxplot
boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Width)
boxplot(iris$Petal.Length)
boxplot(iris$Petal.Width)

mp<-boxplot(iris[,-5])
summary(iris)


