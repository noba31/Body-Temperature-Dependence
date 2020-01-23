# Reading the contents of the file
# Body Temperature Dependence
library(readr)
bodytemp_heartrate <- read_csv("fakepath/bodytempheartrate.csv") 

# Splitting file based on gender
gender <- split(bodytemp_heartrate, f= bodytemp_heartrate$gender)

# Storing the male and female data into variables
male <- gender$`1`
female <- gender$`2`

# Box plot for mean body temperature of males and females
bodyTemp <- boxplot(male$body_temperature, female$body_temperature, names = c("male body temp", "female body temp"), main = "Body temperature vs Gender")

# Summary for box plots
summary(male$body_temperature)
summary(female$body_temperature)

alpha <- 0.05

# Satterthwaite's two sided test
tempTest <- t.test(male$body_temperature, female$body_temperature, alternative = "two.sided", var.equal = FALSE, conf.level = 1-alpha)
tempTest


# Heart rate dependence
# Reading the contents of the file
library(readr)
bodytemp_heartrate <- read_csv("fakepath/bodytempheartrate.csv") 

# Splitting file based on gender
gender <- split(bodytemp_heartrate, f= bodytemp_heartrate$gender)

# Storing the male and female data into variables
male <- gender$`1`
female <- gender$`2`

# Box plot for mean heart rate of males and females
heartRate <- boxplot(male$heart_rate, female$heart_rate, names = c("male heart rate", "female heart rate"), main = "Heart rate vs Gender")

# Summary for box plots
summary(male$heart_rate)
summary(female$heart_rate)

alpha <- 0.05

# Satterthwaite's two sided test
heartTest <- t.test(male$heart_rate, female$heart_rate, alternative = "two.sided", var.equal = FALSE, conf.level = 1-alpha)
heartTest

# Output
a <- lm(male$body_temperature ~ male$heart_rate)
plot(male$heart_rate, male$body_temperature, xlab = "male heart rate", ylab = "male body temp")
abline(a)

b <- lm(female$body_temperature ~ female$heart_rate)
plot(female$heart_rate, female$body_temperature, xlab = "female heart rate", ylab = "female body temp")
abline(b)

x <- bodytemp_heartrate$body_temperature
y <- bodytemp_heartrate$heart_rate
c <- lm(x~y)

plot(y, x, ylab = "body temp", xlab = "heart rate")
abline(c)
