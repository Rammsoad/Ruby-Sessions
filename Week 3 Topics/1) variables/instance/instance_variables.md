# An instance variable is one type of variable defined in a class.
# Each object of a class has a separate copy of the instance variables.
# Instance variables are preceded by the at sign (@) followed by the variable name (for example: @name)
# We can, for example, pass a parameter to the initialize method and assign it to an instance variable for a new object:

class Person

attr_accesor :name

  def initialize(name)
    @name = name
  end
end

# In the code above, @name is an instance variable for the class Person.
# Now, we can create objects of that class and pass an argument to the new method:
p1 = Person.new("David") # p1.instance_variable_get(:@name) # => David
p2 = Person.new("Amy")


# A class can have multiple instance variables.
# For example:
class Animal
  @age = 0
  def initialize(name, age)
    @name = name
    @age = age
  end
end

ob = Animal.new("Jacky", 3)

# What is the output of this code?
class Test
  def initialize num
    puts num%2
  end
end
a = Test.new 9

