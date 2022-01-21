news_table <- read.csv('Online_News_Project/OnlineNewsPopularity.csv', check.names=F, stringsAsFactors=F)

shares <- news_table$shares

ggplot(news_table, aes(x=shares)) + geom_density()

remove(shares_stats)

mean(shares)
summary(shares)

news_updated <- news_table %>% mutate(shares_per_day=shares/timedelta, IsActive=TRUE)
summary(news_updated$shares_per_day)

IQR <- 14.04-2.611
IQR_Q3 <- 1.5*IQR+14.04
IQR_Q1 <- 2.611 - (1.5*IQR)

ggplot(news_updated, aes(x=shares_per_day)) + geom_density(size=1)
sd(news_updated$shares_per_day)
92.10955*3

normal_shares = news_updated[news_updated$shares_per_day < IQR_Q3,]

summary(normal_shares$shares_per_day)

ggplot(normal_shares, aes(x=shares_per_day)) + geom_density(color='purple', size=1) +xlab("Shares per Day Normalized")

rm(summary_normal)

high_shares <- news_updated[news_updated$shares_per_day > IQR_Q3,]
