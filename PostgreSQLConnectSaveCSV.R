# Establish connection to PoststgreSQL using RPostgreSQL
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname = "bi",
                 host = "iprice-qa-bi.cpisffih4sel.ap-southeast-1.rds.amazonaws.com", port = 5432,
                 user = "master", password = "iprice-qa-bi")
dbExistsTable(con, "transactions")
Transactions <- dbReadTable(con, "transactions")
write.csv(Transactions, file = "D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/PowerBI documents/Weekly Data/W27/CSVs/Transactions_final_R_w2.csv")   