#Name: Shelley De Leon

#Question 1a: Plot the Monthly total of people on unemployed benefits in Australia (January 1956–July 1992).

library(fma)

#Question 1a
plot(dole)
#Note: the data shows a variation which increases with the level of the series, a logarithmic transformation is useful.
lambda <- BoxCox.lambda(dole)
plot(BoxCox(dole, lambda), ylab="Transformed monthly total of people on unemployed benefits in Australia ", xlab="Year")   

#Question 1b
plot(usdeaths)
#Note: the variation in the data shows seasonality which might be due to calendar effects. Transforming the data using a logarithic transformation should help.  
lambda <- BoxCox.lambda(usdeaths)
plot(BoxCox(usdeaths, lambda), ylab="Transformed monthly total of accidental deaths in the United States", xlab="Year")   

#Question 1c
plot(bricksq)
lambda <- BoxCox.lambda(bricksq)
plot(BoxCox(bricksq, lambda), ylab="Transformed quarterly production of bricks ", xlab="Year")   


