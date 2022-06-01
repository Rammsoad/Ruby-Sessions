# Q6. Given the following:

x = "Hello"
y = x.empty? ? 1 : 2
p y
Which is the correct output? (Choose one.)

(a) 1
(b) 2
(c) "Hello"
(d) true
A6: (b)

## Answer
The ternary operator (cond ? expr1 : expr2) is a compact form of if/else which will return expr1 if cond is true, otherwise will return expr2. It is most suitable for short statements that easily fit on a single line.

# ------- #

Q7. Given the following:

amount = 120

size = case amount
  when 1..120; "S"
  when 120..170; "M"
  when 170..200; "L"
  else "XL"
end

p size
(a) "S"
(b) "M"
(c) "L"
(d) "XL"
Which is the correct output? (Choose one.)

## Answer
A7: (a)

Ruby case statements will select the first branch to match its when condition.

Because Ruby's two-dot range literal is an inclusive range, the end value is included as part of the range.

So although both 1..120 and 120..170 include 120, the when 1..120 branch is matched because it appears first in the case statement.

# --------- #


Q23. Which of the following can be inserted into __(1)__ in order for the given code to generate the output below? (Choose one.)

x = true
x __(1)__ exit(1)
puts("succeeded!")

[Output]
succeeded!
(a) |
(b) ||
(c) &
(d) &&

## Answer
A23: (b)

The logical || and && operators short-circuit, only executing the right side of the expression if necessary.

The special | and & operators provided on Ruby's boolean objects do not short circuit, so the right side of the expression is always evaluated.

Note that all Ruby objects support the || and && operators, but not all objects implement | and &.

# ---------- #

Q24. Given the following:

m = true
m or n = true
p n
Which is the correct result? (Choose one.)

(a) true
(b) false
(c) nil
(d) A syntax error occurs.

## Answer
A24: (c)

Although the or operator short circuits and the n = true expression is never executed, the n local variable is still statically declared. Therefore, the variable is present but its value is nil.

# ------ #

Q25. Which of the following can be inserted into (1) in order for the given code to generate the output below? (Choose two.)

x = [ 9, 7, 5, 3, 1 ]
p __(1)__

[Output]
[7, 5, 3]
(a) x[1, 3]
(b) x[1..-1]
(c) x[-3..-1]
(d) x[-4..-2]

## Answer
A25: (a) and (d)

This question illustrates two different ways of indexing a sub-array.

One approach is to use two integers, i.e. x[1,3]-- This means "get a subarray of length 3 starting at index 1.

Another approach is to use a range, which generates a subarray based the index values within that range.

The simple form of using a range is something like x[1..3] which would give you a subarray starting at index 1 and ending at index 3.

But Ruby also allows negative indexing, which define indexes relative to the end of an array rather than the beginning.

Thus, x[-4..-2] is referring to the subarray starting from the 4th to the last position in the array, and continuing to the second-to-last position.

To clarify, here is a list of the index values for each position in the array from this question:

 x  [ 9,   7,   5,    3,    1]
 i    0    1    2     3     4
-i   -5   -4   -3    -2    -1

# ------ #

Q30. Which of the following can be inserted into __(1)__ in order for the given code to generate the output below? (Choose one.)

p ["apple", "banana"] __(1)__ ["banana", "carrot"]

[Output]
["apple", "banana", "carrot"]
(a) .concat
(b) &
(c) |
(d) ||

## Answer
A30: (c)

The | operator is equivalent to a set union. It returns a new array that is built by joining two arrays together, eliminating any duplicates while preserving order.

# ----- #

Q31. Which of the following can be inserted into __(1)__ in order for the given code to generate the output below? (Choose one.)

p ["apple", "banana"] __(1)__ ["banana", "carrot"]

[Output]
["banana"]
(a) |
(b) ||
(c) &&
(d) &
(e) .concat

## Answer
A31: (d)

The & operator is equivalent to a set intersection. It returns a new array that is made up of elements found in both arrays it operates on, while preserving order and eliminating duplicates.

# ----- #

Q43. Which of the following can be inserted into (1) in order for the given code to sort an array in descending order? (Choose one.)

ary = [2,4,8,1,16]
p ary.__(1)__

[Output]
[16, 8, 4, 2, 1]
(a) sort { |i,j| -i <= -j }
(b) sort { |i,j| -i <=> -j }
(c) sort { |i,j| i >= j }
(d) sort{ |i,j| i <=> j }

## Answer
A43: (b)

When called with a block, sort will attempt to put elements in order based on the block's result.

The block must implement a comparison between two elements, and is expected to return a negative integer when the first element should appear before the second in the sorted array, 0 if the two elements have an equal sort order, and a postive integer when the first element should appear after the second in the sorted array.

Ruby's numeric objects implement <=>, which provides this behavior automatically:

>> 3 <=> 1
=> 1
>> 3 <=> 3
=> 0
>> 3 <=> 5
=> -1
The <=> (spaceship operator) can be implemented by any object that has a meaningful sort order.

# ------ #



