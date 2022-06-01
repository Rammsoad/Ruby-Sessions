class Animal
  @@count = 0

  def self.count
    @@count
  end
  
  def initialize
    @@count += 1
  end

end

class Cat < Animal

end

class Dog < Animal
  
end

Animal.new
Animal.new
Cat.new
Dog.new
p Animal.count





# frog = Class.new do
#   def jump
#     puts "I'm jumping"   
#   end
# end
# fred.new
# fred.jump
