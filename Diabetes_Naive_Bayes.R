library(caTools)
library(e1071)

mydata= read.csv(file = "/home/ratodya/Desktop/DA/practicals/assignment2/diabetes.csv",header = TRUE,sep = ",")

View(mydata)

temp_field=sample.split(mydata,SplitRatio = 0.7)

train<-subset(mydata,temp_field==TRUE)
test<-subset(mydata,temp_field==FALSE)

head(train)
head(test)

model<-naiveBayes(as.factor(train$Outcome)~.,train)

#pred1<-predict(model,test[-9],type="raw")
pred1<-predict(model,test[-9],type="class")
table(pred1,test$Outcome,dnn = c("predicted","actual"))

output<-cbind(test,pred1)
View(output)

