## A script to download and archive Google search console analytics (formerly webmaster tools)
##
## searchConsoleR package created by Mark Edmondson (http://markedmondson.me)
##
## This script downloads and writes data to .csv for the most recent day of search console data (3 days ago)

## load the required libraries 
## (Download them with install.packages("googleAuthR") and install.packages("searchConsoleR") if necessary
##http://www.ryanpraski.com/google-search-console-api-r-guide-to-get-started/

library(googleAuthR)
library(searchConsoleR)

## Authorize script with Google Developer Console.  
## Add path to your Google Developer Console Service Account secret.json file
service_token <-gar_auth_service("D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/GoogleAPI/My Project-8c7eb4133db1.json")

## data in search console is reliable for 3 days ago so set start date = today - 3
## this is a single day pull so set end = start
start <- Sys.Date() - 20
end <- Sys.Date()

## set website to your URL including http://
website <- "http://www.sahar.net.ir"

## what to download, choose between data, query, page, device, country
download_dimensions <- c('date','page','query','device')

## what type of Google search, choose between 'web', 'video' or 'image'
type <- c('web')

## other options available, check out ?search_analytics in the R console

## this is the query to the search console API
## rowLimit = 5000 is the max

searchquery <- search_analytics(siteURL = website,
                                startDate = start, 
                                endDate = end, 
                                dimensions = download_dimensions,
                                searchType = type, 
                                rowLimit = 5000)

test=crawl_errors(siteURL = website,category='all',platform = 'all')

## Specify Output filepath
filepath <-"D:/OneDrive-Bussiness/OneDrive - iprice group/Mehdi/GoogleAPI/"

## filename will be set like searchconsoledata_2016-02-08 (.csv will be added in next step)
filename <- paste("searchconsoledata", start, sep = "_")

## the is the full filepath + filename with .csv
output <- paste(filepath, filename, ".csv", sep = "")

## this writes the sorted search query report to full filepath and filename row.names=FALSE does not write dataframe row numbers
write.csv(searchquery, output, row.names = FALSE)

## Complete