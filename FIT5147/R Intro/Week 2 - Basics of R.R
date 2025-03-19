### Introduction to R 

##################Installing and loading Packages in R ######################################
install.packages("ggplot2")
library("ggplot2")

# checking for the package and installing it or loading it.
if (!require("ggplot2", character.only = TRUE)) {
  install.packages("dplyr")
  library("ggplot2", character.only = TRUE)
}



########### Making it dynamic ###############################################################
check_install_load <- function(packages) {
  for (pkg in packages) {
    if (!require(pkg, character.only = TRUE)) {
      install.packages(pkg)
      library(pkg, character.only = TRUE)
    }
  }
}

# Example usage:
check_install_load(c("dplyr", "ggplot2", "tidyr"))

##################Reading & Writing data in R ################################################

data<-read.csv(file ="F:\\Monash University\\2024\\Week 2\\cars.csv" ,header = TRUE)
write.csv(data, "F:\\Monash University\\2024\\Week 2\\output\\carsModified.csv", row.names = FALSE)

######################### Working directory commands #########################################
getwd()   ######## Get Current Working directory
setwd("F:\\Monash University\\2024\\Week 2")

##############################################################################################


#Everything within R is objects 
a=1     ## Storing value 1 in a object
b=2     ## Storing Value 2 in b object
c=a+b   ## Mathematical Operation on a & b object and storing value in c.

## Printing output of objects 
print(c)   #Ctrl + enter
c          # ctrl + enter

##R is Case sensitive Language :
a=1
A=23
a
A       # A is not equal a

## Assigning Character Values
Name_of_Employee =  "John"
Name_of_Employee1 <- "Niranjan"

#class of an Object - Datatype 
class(Name_of_Employee)
class(a)

# To get the list of objects created so far in session
ls()



########################################## R Data structures ######################################

## How to place multipe values in a object using Concatenation Function - c

A= c(1,2,4,5,34,21,23)
A 

Name_of_Employee=c("Niranjan","Lilly","Sheeba","Mat","Alex")
class(Name_of_Employee)

answers= c( TRUE,TRUE,FALSE,TRUE)
answers
class(answers)


### Creating a dataframe

climate.data = data.frame( day_of_week=c(1,2,3,4,5),
                           day=c("Sunday","Monday","Tuesday","Wednesday","Thursday"),
                           temperature= c(23,24,25,31,30),
                           precipitation=c(30,23,433,232,232),
                           Rain=c("Y","N","N","Y","Y"),
                           date=as.Date(c("2017-03-25","2017-02-25","2017-02-25","2017-08-25","2017-01-25")),stringsAsFactors = FALSE)

class(climate.data)

#How to check attributes of dataframe
str(climate.data)


############# Subsetting / Indexing your data #########################

# Extract first 4 rows 
results = climate.data[1:4,]

#Extract columns only

results = climate.data[,2:3]
results

#Rows and Columns extract
results = climate.data[1:2,2:3]

###################### Merging Dataframe ##################################
climate.data = data.frame( day_of_week=c(1,2,3,4,5),
                           day=c("Sunday","Monday","Tuesday","Wednesday","Thursday"),
                           temperature= c(23,24,25,31,30),
                           precipitation=c(30,23,433,232,232),
                           Rain=c("Y","N","N","Y","Y"),
                           date=as.Date(c("2017-03-25","2017-02-25","2017-02-25","2017-08-25","2017-01-25")),stringsAsFactors = FALSE)

climate.data2 = data.frame( day_of_week=c(6,7),
                           day=c("Friday","Saturday"),
                           temperature= c(21,20),
                           precipitation=c(232,232),
                           Rain=c("Y","Y"),
                           date=as.Date(c("2017-08-25","2017-01-25")),stringsAsFactors = FALSE)


# Merge data1 and data2 

climate.final= rbind(climate.data,climate.data2)
climate.final

### Sequence function 

d1=seq(2,10,2)
d1
d1[2]
d1[2:3]
d1[c(2,3,5)]
d1[-1]
d1[-c(2,4)]

#Datasets presents in R packages
data()

######################################################Built in functions in R ###########################################
View(mtcars)
nrow(mtcars)  # No. of rows
ncol(mtcars)  # No. of Columns 
str(mtcars)

#Top and last 6 records of data
head(mtcars)
head(mtcars,10)
tail(mtcars)

sort(mtcars$mpg)
sort(mtcars$mpg,decreasing = TRUE)

#Frequency distribution 
table(mtcars$cyl)
prop.table(table(mtcars$cyl))

#Calculating Mean, Median, mode
mean(mtcars$mpg)
sum(mtcars$mpg)
min(mtcars$disp)
max(mtcars$disp)


############################################ Data Manipulation ####################################################################
#install.packages("dplyr")
library(dplyr)
library(hflights)

View(hflights)
#Select Operation

hflightsSubSetdata = select(hflights,Year,Month,FlightNum)
hflightsSubSetdata = select(hflights,1,2,8)

#Selecting columns with specific names

hfTime= select(hflights,contains("Time"))
hfTime

hfdata1=select(hflights,1:5)
hfdata1

hfdata2=select(hflights,starts_with("Day"))

############# Function in DPLYR###################
marks=read.csv("Marks.csv")
View(marks)

MarksTotal = mutate(marks, TotalMarks = Maths+Physics+Chemistry)
View(MarksTotal)

MarksPercentage= mutate ( MarksTotal, PercentageTotal = TotalMarks/3)
View(MarksPercentage)

########Filtering of Records#########################################
View(mtcars)
filter(mtcars,mtcars$cyl>4)
filter(mtcars,mtcars$cyl==6)

#Filtering of records with multiple conditions 

filter(mtcars,hp>150 & gear==5)

#Arrange in order

arrange(mtcars,mpg) # ASC order
arrange(mtcars,desc(mpg)) # DSC Order


#### Pipe Operator ####################

hflights %>% select(contains("Time"))  %>% filter(AirTime>100)










