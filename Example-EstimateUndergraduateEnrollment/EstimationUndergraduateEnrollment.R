#Creating A Linear Model(http://www.r-bloggers.com/r-tutorial-series-simple-linear-regression/)
#Estimate undergraduate enrollment at the University of New Mexico (Office of Institutional Research, 1990). 
datavar=read.csv(file="D:\\OneDrive\\R\\Example-EstimateUndergraduateEnrollment\\dataset_simpleRegression.csv")
attach(datavar)
linearModelVar <- lm(ROLL ~ UNEM, datavar)
linearModelVar
new.datavar<-data.frame(UNEM=c(4,6,9)) #Give new data to model for predition
predict(linearModelVar,new.datavar)

#by saying lm(Total ~ Coupon), you are fitting a model that uses Total as the response variable, with Coupon as the predictor. That is, your model is of the form Total = a + b*Coupon, with a and b the coefficients to be estimated. Note that the response goes on the left side of the ~, and the predictor(s) on the right.
#http://stackoverflow.com/questions/9028662/predict-maybe-im-not-understanding-it
