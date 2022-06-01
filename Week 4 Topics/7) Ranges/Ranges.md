# Ranges

A range represents a sequence. 0 to 10, 56 to 82, and a to z are all examples of ranges.
Ruby has special operators to create ranges with ease.
These are the ''..'' and ''...'' range operators. The two-dot form creates an inclusive range, while the three-dot form creates a range that excludes the specified high value.

Examples: 
a = (1..7).to_a
puts a

b = (79...82).to_a
puts b

c = ("a".."d").to_a
puts c