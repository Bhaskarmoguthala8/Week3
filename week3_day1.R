#Data frame
Subject<-c(1:7)
Subject
Gender<-c("male","male","male",NA,"female","female","female")
Gender
Age<-c(23,34,32,54,65,45,35)
Age
Weight<-c(67.5,NA,63.7,56.8,89.9,87.5,77.5)
Weight
Trial<-data.frame(Subject,Gender,Age,Weight)
View(Trial)

#indexing it starts with "1".
Trial[4,5]
Trial[,3]

#Rename
install.packages("data.table")
install.packages("data.table")

library(data.table)
library(data.table)


setnames(Trial,'Subject','Participant')

help("setNames()")
#Missing Values
Trial[!complete.cases(Trial)]

Trial[complete.cases(Trial),3]
Trial[complete.cases(Trial),"Age"]

Trial$Age [Trial$Subject==6]<-55.0
View(Trial)

Trial$Gender [Trial$Subject==4]
Trial$Weight [Trial$Subject==2]




#Data Frame 2

Manager<-c(1:5)
Manager
Date<-c("10/15/18","01/11/18","10/21/18","10/28/18","05/01/18")
Date
country<-c('US','US','IRL','IRL','IRL')
country
Gender<-c('M','F','F','M','F')
Gender
Age<-c(32,45,25,39,99)
Age
q1<-c(5,3,3,3,2)
q1
q2<-c(4,5,5,3,2)
q2
q3<-c(5,2,5,4,1)
q3
q4<-c(5,5,5,NA,2)
q4
q5<-c(5,5,2,NA,1)
q5

Manager_data<-data.frame(Manager,Date,country,Gender, Age, q1, q2, q3, q4, q5)
View(Manager_data)
Manager_data$Age[Manager_data$Age]==99
Manager_data
# create a new new column
Manager_data$Agecat<-c(10,22,33,44,55)
Manager_data

# drop
Manager_data_1<-subset(Manager_data, select = -Manager)
Manager_data_1 
Manager_data_2<-subset(Manager_data, select = -1)
Manager_data_1 
Manager_data

Manager_data<-Manager_data[,c(2,11)]
Manager_data

Manager_data_1[1:3,1:3]
sub_set=Manager_data_1[c(1,3,5),c(2,4)]
sub_set
str(Manager_data_1)
str(sub_set)
Manager_data_1<-subset(Manager_data_1, select = -Agecat)
Manager_data_1
Manager_data_1$age_cat[Manager_data_1$Age>=45]<-"Elder"
Manager_data_1$age_cat[Manager_data_1$Age<=25]<-"Young"
Manager_data_1$age_cat[Manager_data_1$Age>26 & Manager_data_1$Age<45]<-"Middle Aged"
Manager_data_1
Manager_data_1$age_cat[is.na(Manager_data_1$Age)]<-"Elder"
Manager_data_1
Manager_data_1$q4[is.na(Manager_data_1$q4)]<-4
Manager_data_1$q5[is.na(Manager_data_1$q5)]<-5
Manager_data_1
AgeCat<-factor(Manager_data_1$age_cat, order=TRUE, levels =c("Young","Middle Aged","Elder"))
AgeCat
str(AgeCat)

summary_col<- Manager_data_1$q1 + Manager_data_1$q2 + Manager_data_1$q3 + Manager_data_1$q4 + Manager_data_1$q5
summary_col
Manager_data_1$summary_col<-summary_col
Manager_data_1
# Manager_data_1 <- data.frame(Manager_data_1, summary_col) is same as the above
qs_mean<- rowMeans(Manager_data_1[5:9])
Manager_data_1$qs_mean<-qs_mean
Manager_data_1
col_summary<-colSums(Manager_data_1[,c(4:9,11:12)])
col_summary

