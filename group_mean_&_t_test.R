#Relationship between Cartegory mean, t.test and Linear Regression
#Upload file
dataset <- read.csv(file.choose())

#File dimension
dim(dataset)

#The variables
names(dataset)

#First 3 rows
dataset[1:3,]

dataset$Sex <- as.factor(dataset$Sex)

#Mean of Female and Male 
Fmean <- mean(dataset$Weight[dataset$Sex=="0"])
Mmean <- mean(dataset$Weight[dataset$Sex=="1"])

#Mean difference
#Male mean - Female Mean
Mean_Diff <- Mmean - Fmean

#Male mean  29.47372
#Female Mean  34.62261

Mean_Diff #5.148886

#t.test

t.test(Weight ~ Sex, data = dataset)
#p_value = < 0.05
#mean in group 0 mean in group 1 
#29.47372        34.62261 

#Linear Regression
model1 <- lm(Weight ~ Sex, data = dataset)

#Model summary
summary(model1)

#Coefficient
coef(model1)
#(Intercept)         Sex 
#29.473723    5.148886
