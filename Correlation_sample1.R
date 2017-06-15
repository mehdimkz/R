#https://www.scribd.com/doc/236223614/R-statistics
#http://tryr.codeschool.com/levels/7/challenges/9
#claculate corelation between GDP and Piracy Data and creation og Linear Model for prediction
piracy=read.csv(file="D:\\OneDrive\\R\\piracy.csv",head=TRUE,sep=",")
gdp=read.table("D:\\OneDrive\\R\\gdp.txt", sep=",", header=TRUE)
countries <- merge(x = gdp, y = piracy)
plot(countries$GDP, countries$Piracy)
cor.test(countries$GDP, countries$Piracy)
line <- lm(countries$Piracy ~ countries$GDP)
abline(line)
line
new.countries<-data.frame(GDP=c(15000,40000,68000)) #create new data to model for predition
predict(line,new.countries)
