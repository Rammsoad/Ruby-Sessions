# Scope defines where in a program a variable is accessible.
# Ruby has four types of variable scope: local, global, instance and class.

# Global variables in Ruby are accessible from anywhere in the Ruby program, regardless of where they are declared. Global variable names are prefixed with a dollar sign ($).
For example:

$x = 42

def change
    $x = 8
end

change
puts $x

# As you can see the $x global variable is accessible in the whole program.

# Use of global variables is strongly discouraged. The problem with global variables is that, not only are they visible anywhere in the code, but they can also be changed from anywhere in the application. This can result in hard to find bugs.


<!-- x = 42

def change
    x = 8
end

change
puts x -->