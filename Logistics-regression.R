In logistics regression model, dependent variable has categorical variable.
Therefore, the general mathematical equation are:
        y = 1/(1+e^-(a+b1x1+b2x2+b3x3+...))
    Where,
     y is the dependent variable
     x is the independent variable
     a, b is the coefficients

#In R, Logistics regression model train by using glm () function#
Syntax: glm(formula,data,family)
    Where,
     formula is creating a relationship between the variables
     data is the dataset that provides the variables
     family is R object to specify the details of the model. It's value is binomial for logistic regression.

#STEPS INVOLVED IN TRAINING A LOGISTICS MODEL#

#Data generation by selecting some columns from the data#
   input <- mtcars[,c("am","cyl","hp","wt")]
   print(head(input))
   
#Create a regression model#
   am.data = glm(formula=am ~ cyl + hp + wt ,data=input,family=binomial) #creating relationship between am with cyl+hp+wt#
   print(summary(am.data))
   
Note: In the output, user will find p value of the model. If Pvalue is more than 0.05, then we consider them to be insignificant in contributing to the value of the variable
"am". Therefore, weight (wt) impacts the "am" value in this regression model.

