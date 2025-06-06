###############################
# analysis script
#
#this script loads the processed, cleaned data, does a simple analysis
#and saves the results to the results folder

#load needed packages. make sure they are installed.
library(ggplot2) #for plotting
library(broom) #for cleaning up output from lm()
library(here) #for data loading/saving

#path to data
#note the use of the here() package and not absolute paths
data_location <- here::here("starter-analysis-exercise","data","processed-data","processeddata2.rds")

#load data. 
mydata <- readRDS(data_location)


######################################
#Data fitting/statistical analysis
######################################

############################
#### First model fit
# fit linear model using height as outcome, weight as predictor

lmfit1 <- lm(Height ~ Weight, mydata)  

# place results from fit into a data frame with the tidy function
lmtable1 <- broom::tidy(lmfit1)

#look at fit results
print(lmtable1)

# save fit results table  
table_file1 = here("starter-analysis-exercise","results", "tables-files", "resulttable1.rds")
saveRDS(lmtable1, file = table_file1)

############################
#### Second model fit
# fit linear model using height as outcome, weight and gender as predictor

lmfit2 <- lm(Height ~ Weight + Gender, mydata)  

# place results from fit into a data frame with the tidy function
lmtable2 <- broom::tidy(lmfit2)

#look at fit results
print(lmtable2)

# save fit results table  
table_file2 = here("starter-analysis-exercise","results", "tables-files", "resulttable2.rds")
saveRDS(lmtable2, file = table_file2)

############################
#### Third model fit
# fit linear model using height as outcome, salary and major as predictor

lmfit3 <- lm(Height ~ Salary + Major, mydata)  

# place results from fit into a data frame with the tidy function
lmtable3 <- broom::tidy(lmfit3)

#look at fit results
print(lmtable3)

# save fit results table  
table_file3 = here("starter-analysis-exercise","results", "tables-files", "resulttable3.rds")
saveRDS(lmtable3, file = table_file3)








  