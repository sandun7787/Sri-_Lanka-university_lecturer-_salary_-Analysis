# Variance and Mean ANALYSIS
attach(Salaries)
View(Salaries)

My_Sal_rank_Model<-aov(salary~rank)
summary(My_Sal_rank_Model)
library(Rcmdr)
numSummary(salary,groups=rank,statistics=c("mean" ,"sd"))

#Graphical Analysis 

boxplot(salary~rank,main="Salary Analysis",
        xlab = "Rank", col=c("gray30","gray60","gray90"))