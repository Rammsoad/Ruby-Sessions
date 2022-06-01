# Short circuit evaluation 

What is short circuit evaluation??

It means in a conditional statement with two conditions, the second condition is evaluated only when the first condition is not enough to determine the value of expression

Consider a conditional statement: print "Hello" if a && b. 
 In && condition if the first condition is false (considering a is defined as false) then the result of a && b is always false. So in this ruby won't try to evaluate b.
