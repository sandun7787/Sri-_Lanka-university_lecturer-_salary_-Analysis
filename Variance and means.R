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

#Mean Analysis with Anova
My_Sal_rank_Model<-aov(salary~rank)
summary(My_Sal_rank_Model)
numSummary(salary,groups=rank,statistics=c("mean" , "sd"))

#Graphical Analysis 

boxplot(salary~rank,main="Salary Analysis",
        xlab = "Rank", col=c("gray30","gray60","gray90"))
#variance and the mean analysis

My_Sal_Discipline_Model<-aov(salary~discipline)
summary(My_Sal_Discipline_Model)
library(Rcmdr)
numSummary(salary,groups=discipline,statistics=c("mean" ,"sd"))

#Graphical Analysis 

boxplot(salary~discipline,main="Salary Analysis",
        xlab = "Rank", col=c("gray30","gray60","gray90"))


# Variance Test -Two Variance F test
My_Sal_Discipline<-var.test(salary ~ discipline , alternative = 'two.sided' , conf.level=.95,data=Salaries)
summary(My_Sal_Discipline)


#Variance test-

bartlett.test(salary ~ discipline , data=Salaries)
with(Salaries , tapply(salary , discipline, var , na.rm=TRUE))


#Graphical Analysis 

boxplot(salary~discipline,main="Salary Analysis",
        xlab = "discipline", col=c("gray30","gray60","gray90"))

#Variance Test
leveneTest(salary ~ discipline , data=Salaries, center="median")
with(Salaries, tapply(salary ,  discipline , var , na.rm=TRUE))

#Mean test - Independent Sample T  test
t.test(salary ~ discipline , alternative="two.sided" , conf.level=.95 , var.equal=FALSE, data=Salaries)