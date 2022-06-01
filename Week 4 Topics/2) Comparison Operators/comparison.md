# Comparison Operators
Comparison operators take simple values (numbers or strings) as arguments and used to check for equality between two values. Ruby provides following comparison operators :

Operator	                        Name	Example	Result
==	Equal	                        x==y	True if x is exactly equal to y.
!=	Not equal	                    x!=y	True if x is exactly not equal to y.
>	Greater than	                x>y	    True if x is greater than y.
<	Less than	                    x<y	    True if x is less than y.
>=	Greater than or equal to	    x>=y	True if x is greater than or equal to y.
<=	Less than or equal to	        x<=y	True if x is less than or equal to y.
<=>	Combined comparison operator.	x<=>y	x <=> y : =
if x < y then return -1
if x =y then return 0
if x > y then return 1
if x and y are not comparable then return nil


# Search more
===	Test equality	                x===y	(10...20) === 9 return false. 

.eql?	True if two values are equal and of the same type	x.eql? y	1 == 1.0 #=> true
1.eql? 1.0 #=> false

equal?	True if two things are same object.	obj1.equal?obj2	val = 10 => 10
val.equal?(10) => true