Traffic <- read.csv(file="D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/PowerBI documents/Weekly Data/2017/w5/bi-traffic.csv", header=TRUE, sep=",") 
Traffic_Arranged <- subset(Traffic, select = c(11,2,17,13,15,5,12,6,10,7,1,8,9,14,16))  
#Traffic_main<- read.csv(file="C:/Users/samue/Desktop/W25/CSVs/traffic_final_w24.csv", header=TRUE, sep=",") 
names(Traffic_Arranged)[11]=paste("ga.bounces")
#Traffic_final <- rbind(Traffic_main, Traffic_Arranged) 
#levels(Traffic_final$ipg.subProduct) 
Traffic_final=Traffic_Arranged
Traffic_final$ipg.subProduct=gsub(".*-.*", "mixed", Traffic_final$ipg.subProduct) 
#Traffic_final$ga.contentGroup1=gsub(".*-.*", "mixed", Traffic_final$ga.contentGroup1)  
write.csv(Traffic_final, file = "D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/PowerBI documents/Weekly Data/2017/W5/bi-traffic-w5.csv",row.names=F)


Conversion <- read.csv(file="D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/PowerBI documents/Weekly Data/2017/W5/bi-conversions.csv", header=TRUE, sep=",")
Conversion_Arranged <- subset(Conversion, select = c(9,1,17,13,14,15,5,10,6,12,11,7,8,16)) 
#Conversion_main<- read.csv(file="C:/Users/samue/Desktop//W25/CSVs/bi-conversions_final_w24.csv", header=TRUE, sep=",") 
#names(Conversion_Arranged)[7]=paste("ga.contentGroup1") 
names(Conversion_Arranged)[2]=paste("ga.date") 
#Conversion_final <- rbind(Conversion_main, Conversion_Arranged) 
Conversion_final <-Conversion_Arranged 
Conversion_final$ipg.subProduct=gsub(".*-.*", "mixed", Conversion_final$ipg.subProduct) 
#Conversion_final$ipg.contentGroup1=gsub(".*-.*", "mixed", Conversion_final$ipg.contentGroup1) 
write.csv(Conversion_final, file = "D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/PowerBI documents/Weekly Data/2017/W5/bi-conversions-w5.csv",row.names=F) 


Traffic <- read.csv(file="D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/PowerBI documents/Weekly Data/2017/w5/bi-traffic.csv", header=TRUE, sep=",")
Conversion_unique <- subset(Traffic, select = c(11,2,17,13,14,5,12,6,4,16))
#Conversion_unique$ga.contentGroup1=gsub(".*-.*", "mixed", Conversion_unique$ga.contentGroup1)
write.csv(Conversion_unique, file = "D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/PowerBI documents/Weekly Data/2017/W5/Conversion_unique-w5.csv",row.names=F) 

#----------------Transaction-------------------------

Transaction<- read.csv(file="D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/PowerBI documents/Weekly Data/2017/W5/transactions-2017-1.csv", header=TRUE, sep=",")
Transaction_ordered<- subset(Transaction, select = c(5,1,18,17,10,40,19,21,27,12,33,22,7,20,6,11,30,34))  
write.csv(Transaction_ordered, file = "D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/PowerBI documents/Weekly Data/2017/W5/Transaction-w4.csv",row.names=F)            


