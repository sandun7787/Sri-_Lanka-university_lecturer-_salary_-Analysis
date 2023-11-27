# Normal Distribution Test

#significant level:0.05
#confident level:0.95

attach(Salaries)

library(nortest)


#Anderson Darling Normality Test

ad.test(salary)

#Lilefore.Test Normality Test

lillie.test(salary)

#shapiro test Normality Test

shapiro.test(salary)


#Graphical Analysis
#Histogram
hist(salary,
     main = "Salary Distribution",
     xlab="Salry Category",
     ylab="Salry($)",
     prob=TRUE
     )

#Bell Curve
curve(dnorm(x,mean = mean(salary,na.rm = TRUE),
            sd=sd(salary,na.rm = TRUE)),add=TRUE)


#Density Curve
lines(density(salary),col="Red")

#quantile Comparison plot
library(Rcmdr)


qqPlot(salary, dist="norm", id=list(method="y", n=2, 
           labels=rownames(Salaries)),
       main="Salry Distribution")
