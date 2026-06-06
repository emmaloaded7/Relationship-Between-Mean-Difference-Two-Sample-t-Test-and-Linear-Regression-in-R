#Relationship between Cartegory mean, t.test and Linear Regression
dataset <- read.csv(file.choose())

dim(dataset)

names(dataset)

dataset[1:3,]

Fmean <- mean(dataset$Weight[dataset$Sex=="0"])
Mmean <- mean(dataset$Weight[dataset$Sex=="1"])

Mean_Diff <- Mmean - Fmean

Mean_Diff

#t.test

t.test(Weight ~ Sex, data = dataset)

#Linear Regression
model1 <- lm(Weight ~ Sex, data = dataset)
summary(model1)
coef(model1)
