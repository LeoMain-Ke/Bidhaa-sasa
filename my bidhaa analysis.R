#install.packages("readxl")
library(readxl)

excel_sheets("Data Analyst Test.xlsx")

#instr <- read_excel("Data Analyst Test.xlsx", sheet = 1)
data <- (read_excel("Data Analyst Test.xlsx", sheet = 2,))
data <- (data[-c(1:12),header=TRUE])
str(data)
colnames(data)

data <- read.csv("Data Analyst Test.csv")
data <- data[-c(1:12),]

str(data)
head(data)

##detecting missing values
#install.packages("Amelia")
library("Amelia")
missmap(data, main =" Missing map")

sum(is.na(data$...27)== TRUE)/length(data$...27)   #40% missing data
sum(is.na(data$...4)== TRUE)/length(data$...4)     #78% missing data
sum(is.na(data$...19)== TRUE)/length(data$...19)   #2% missing data
sum(is.na(data$...2)== TRUE)/length(data$...2)     #99% missing data
sum(is.na(data$...29)== TRUE)/length(data$...29)   #83% missing data


