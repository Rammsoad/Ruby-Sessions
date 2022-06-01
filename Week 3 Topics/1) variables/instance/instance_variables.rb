class Animal
    @count = 0
  
    def self.count
      @count
    end

    def self.count=(n)
        @count = n
    end
    
    def initialize
      self.class.count += 1
    end
end
  
  class Cat < Animal
    @count = 0
  end

  class Dog < Animal
    @count = 0
  end
  
  Animal.new
  Animal.new
  Cat.new
  Dog.new
  p "Animal count is: #{Animal.count}"
  p "Cats count is: #{Cat.count}"
  p "Dogs count is: #{Dog.count}"