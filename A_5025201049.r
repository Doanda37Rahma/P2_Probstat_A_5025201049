# Nomor 1

# 1.a.
x = c(78,75,67,77,70,72,78,74,77)
y = c(100,95,70,90,90,90,89,90,100)
sd(x-y)

# 1.b.
t.test (x, y, paired=TRUE)

# 1.c.
# Jawaban di README

# Nomor 2

# 2.a.
zsum.test(
  mean.x = 23500,
  n.x = 100,
  sigma.x = 3900,
  alternative = c("greater"),
  mu = 20000,
  conf.level = 0.95,
)

# 2.b.
# Jawaban di README

# 2.c.
xbar = 23500
mu = 20000
sigma = 3900
n = 100
z = (xbar - mu)/(sigma/sqrt(n))
z

p = pnorm(q=z, lower.tail=FALSE)
p



# Nomor 3

# 3.a.
# Jawaban di README

# 3.b.

xbar1 = 3.64 
xbar2 = 2.79
n1 = 19
n2 = 27
sigma1 = 1.67
sigma2 = 1.32
zstat = (xbar1-xbar2-0)/sqrt(sigma1*sigma1/n1+sigma2*sigma2/n2)
zstat
pvalue = 2*pnorm(q=zstat, lower.tail=FALSE)
pvalue

# 3.c.
zsum.test(
  mean.x = 3.64, s.x = 1.67, n.x = 19, 
  mean.y = 2.79 , s.y = 1.32, n.y = 27, 
  alternative = "two.sided", var.equal = TRUE
)

# 3.d.
critVal = qnorm(p=.05/2, lower.tail=FALSE)
critVal

# 3.e.
# Jawaban di README

# 3.f.
# Jawaban di README

# Nomor 4

# 4.a.
data = read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"), check.names = TRUE, header = TRUE)

data$Group = factor(data$Group,labels = c("1", "2", "3"))

group1 = subset(data, Group == "1")
group2 = subset(data, Group == "2")
group3 = subset(data, Group == "3")


qqnorm(group1$Length)
qqline(group1$Length)
qqnorm(group2$Length)
qqline(group2$Length)
qqnorm(group3$Length)
qqline(group3$Length)

# 4.b.
bartlett.test(Length~Group, data=data)

# 4.c.
model1 = lm(Length ~ Group, data = onewayanova)
anova(model1)

# 4.d.
# Jawaban di README

# 4.e.
TukeyHSD(aov(model1))

# 4.f.
install.packages("ggplot2")
library(ggplot2)
ggplot(onewayanova, aes(x = Group, y = Length)) +
  geom_boxplot(color = c("#00AFBB", "#E7B800", "#FC4E07")) +
  scale_x_discrete() + xlab("Group") + ylab("Length (cm)")

# Nomor 5
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL = read_csv("GTL.csv")
head(GTL)

# 5.a.
qplot(x = Temp, y = Light, geom = "point", data = GTL) +
      facet_grid(.~Glass, labeller = label_both)

# 5.b.
GTL$Glass = as.factor(GTL$Glass)
GTL$Temp_Factor = as.factor(GTL$Temp)
str(GTL)

anova = aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# 5.c.
summary = group_by(GTL, Glass, Temp) %>%
summarise(mean=mean(Light), sd=sd(Light)) %>%
arrange(desc(mean))
summary

# 5.d.
tukey = TukeyHSD(anova)
tukey

# 5.e.
tukey.cld = multcompLetters4(anova, tukey)
tukey.cld

cld = as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey = cld$Letters
data_summary
