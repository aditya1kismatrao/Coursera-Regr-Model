#script with rough data analysis and regression model comparision

#data analysis of the data set

data(mtcars)
head(mtcars)

#determining if an automatic or manual transmission is better for MPG

plot(mtcars$mpg, factor(mtcars$am))

# gathering mpg for automatic transmission
auto <- mtcars$mpg[mtcars$am == 1]

#gathering mpg for manual transmission
manu <- mtcars$mpg[mtcars$am == 0]

#performing t.test for not paired means
t.tes(auto, manu)

#performing the same analysis only using regression model with dumb variables
fit <- lm(mpg, factor(am), data = mtcars)
summary(fit)$coef

#performing analysis for regression model selection
#first using pairs to compair the impact of different  variables on mpg
pairs(mtcars)

#first model includes all available variables
fit1 <- lm(mpg ~ ., data = mtcars)

summary(fit1)
