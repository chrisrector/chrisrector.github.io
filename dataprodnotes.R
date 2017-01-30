

# d <- read.table("c:/tmp/halifax.tsv", sep="\t", header=TRUE, quote="", comment.char="")
# datetime <- strptime(factor(d$Sale.Date),  format = "%B %d %Y")
# d <- cbind(d, datetime)
# year <- as.numeric(format(d$datetime, "%Y"))
# d <- cbind(d, year)
# month_num <- as.numeric(format(d$datetime, "%m"))
# d <- cbind(d, month_num)
# 
# d$price <- as.numeric(d$Sale.Price)
# 
# ggplot(data=d, aes(x=price)) + 
#   geom_histogram(fill="gray", binwidth = 1000000, colour="black") + 
#   scale_y_continuous(labels=comma) + 
#   scale_x_continuous(labels=comma)
# 
# 
# ggplot(data=dt, aes(x=datetime, y=price)) + 
#   geom_line() + 
#   scale_y_continuous(labels=comma) +
#   geom_hline(yintercept = mean(dt$price), color="blue")


library(car)

ggplot(Salaries, aes(sex,salary)) + 
  geom_bar(position="dodge", stat="identity", aes(fill = rank)) + 
  scale_y_continuous(labels=comma) + 
  coord_flip()


