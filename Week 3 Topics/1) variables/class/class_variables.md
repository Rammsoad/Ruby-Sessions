# Class variables are accessible to every object of a class. A class variable belongs to the class, not the objects.
# You declare a class variable using two @ signs, for example @@name.
# We can, for example, keep count of all Person objects created using a class variable:

class Person
    @@count = 0
    def initialize
        @@count += 1
    end
    def self.get_count
        @@count
    end
end

p1 = Person.new
p2 = Person.new

puts Person.get_count


#

