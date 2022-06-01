# Class methods are methods we can call directly on the class itself, without having to instantiate any objects.
# This can be useful when there is no logical need to create an object of the class, such as when a class is used to group similar methods and functionality (like mathematical operations).

# One example is a Math class that includes a square method for returning the square of its parameter. There is no logical need to create an object of the Math class just to call the method. This is where class methods come into play.
# Class methods are defined using the self keyword:

class Person
  def self.info
    puts "A Person"
  end
end

# Now, the method is a class method and can be called directly from the class, without the need of an object:

Person.info