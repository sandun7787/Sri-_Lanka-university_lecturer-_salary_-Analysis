# Normal Distribution Test

#significant level:0.05
#confident level:0.95

attach(Salaries)

library(nortest)


#Anderson Darling Normality Test

ad.test(salary)

#Lilefore.Test Normality Test

lillie.test(salary)
