# Bitwise Operators
In Ruby, Bitwise operators allow to operate on the bitwise representation of their arguments.

What is a bit?

A bit (Binary digIT) is the basic unit of information stored in the computing system that exists in two possible states, represented as ON or OFF. In a computer system, the ON state considered as 1 and OFF state considered as 0. These states can be compared with two states of a flip-flop, two states of an electric switch etc. These two values 0 and 1 are called Binary digit and these digits are in a specific number system, that is BINARY number system which constructs upon the base of 2.


Following Bitwise operators supported by Ruby language

Operator	Name	                Example	Result
&	        And	x &y	            Bits that are set in both x and y are set.
|	        Or	x | y	            Bits that are set in either x or y are set.
^	        Xor	x ^ y	            Bits that are set in x or y but not both are set.
~	        Not	~x	                Bits that are set in x are not set, and vice versa.
<<	        Shift left	x <<y	    Shift the bits of x, y steps to the left.#
>>	        Shift right	x >>y	    Shift the bits of x, y steps to the right.*

18.to_s(2) 