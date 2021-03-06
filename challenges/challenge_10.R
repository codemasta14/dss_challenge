# Challenge 10 - "Fibonacci Evens Sequence"
# 5 Points + 5 Bonus Points

# Challenge Description:
# Most traditional programmers will run into a problem involving the fibonacci sequence early on in their programming tenure. 
# The Fibonacci sequence can demonstrate many uses of iteration and recurssion. For those who aren't familiar, the Fibonacci 
# sequence is generated as follows: 0-th value is 0; 1-st value is 1; all next values are sum of two immediately preceeding.

# Example: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, ...

# Your challenge is to consider the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.

# Bonus: Solve the problem using the closed-form solution to the Fibonacci sequence

# Your Code Here:

golden=(1+sqrt(5))/2
other= -(1/golden)
fibonacci <- function(n){
  ((golden^n)-(other^n))/sqrt(5)
}



fibs <- list()
n = 0
while (fibonacci(n)< 4000000) {
  fibs[n+1] <- fibonacci(n)
  n= n+1
  
}

fibs%>%
  unlist()%>%
  {data.frame(fib=.)}%>%
  filter(fib %% 2 < 1)%>%
  summarize(total = sum(fib))

fibs%>%
  unlist()%>%
  {data.frame(fib=.)}%>%
  {mutate(.,rownum= 1:n())}%>%
  filter(rownum %% 2 <1 )%>%
  summarize(total = sum(fib))

# Answer:

##Where fibonacci(n) is even
#4613732

##Where n is even
#5702887