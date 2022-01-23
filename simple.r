:wqlibrary(xlsx)

setwd("~/group_challenges/project1/Database\ Files/")

Mydata1 <- read.csv(file='OnlineNewsPopularity.csv',check.names=F,stringsAsFactors = F)

M<-c(Mydata1$data_channel_is_lifestyle,Mydata1$data_channel_is_bus,Mydata1$data_channel_is_socmed,Mydata1$data_channel_is_tech,Mydata1$data_channel_is_world,Mydata1$shares)

(Xsq <- chisq.test(M))
Xsq$observed   # observed
Xsq$expected   # expected

#X-squared = 1.0141e+10, df = 237863, p-value < 2.2e-16
