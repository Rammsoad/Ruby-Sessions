# Scope defines where in a program a variable is accessible.
# Ruby has four types of variable scope: local, global, instance and class.

# Local variables are local to the code construct in which they are declared. For example, a local variable declared in a method or within a loop cannot be accessed outside of that loop or method. Local variable names must begin with either an underscore or a lowercase letter. 

# For example:

def calc(x)
  y = 2
  puts x*y
end
puts y 

# error (undefined local variable or method 'y')

arr = [1, 2, 3]
arr.each {|x| puts x}

# x is a local variable available only in the iterator block.

# You can have different variables with the same name in different scopes.

# What is the output of this code?
def change
  x = 5
end
x = 8
change
puts x

1) error
2) 8
3) 5
