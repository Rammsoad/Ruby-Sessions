# Q3. Which variable name is valid in Ruby? (Choose one.)

(a) 3y
(b) false
(c) _9class
(e) xyz$

## Answer
 A3: (c)
  Ruby variable names must begin with a lowercase letter or underscore, and may contain only letters, numbers, and underscore characters.

  Variable names must not conflict with keywords (e.g. you cannot have a variable called class), but unambiguous names that contain reserved words are acceptable (i.e. both classy and _class are valid Ruby variable names)


# -------------------------- #

# Q8. Given the following:

item = "apple"

["banana", "carrot", "daikon"].each do |item|
  puts item
end
puts item

# Which is the correct result? (Choose one.)

(a) A syntax error occurs

(b) An exception is raised

(c)

banana
carrot
daikon
daikon
(d)

banana
carrot
daikon
apple

## Answer
 A8: (d)
 Although local variables from the surrounding scope are accessible within blocks, block parameters themselves are always block-local variables. This means that when a block parameter has the same name as a local variable from the surrounding scope, within the block any references will refer to the block-local variable. This prevents accidental modification of variables from the outside scope due to naming collisions.

 Defining block parameters with the same name as a local variable from the surrounding scope is considered an antipattern and may be a sign of an accidental programming error. To catch this problem, run ruby with the -w flag, and you will see warnings like warning: shadowing outer local variable - item wherever this problem occurs.


# -------------------------- #

# Q9. Given the following:

x = 0

4.times do |i|
  x += i
end

p x
# Which is the correct result? (Choose one.)

(a) 0
(b) 4
(c) 6
(d) A syntax error occurs

## Answer
A9: (c)
 The Integer#times method yields values starting at zero, up to one less than the specified integer.

Although block variables with the same name of local variables from the surrounding scope are shadowed (see A8), other local variables are accessible and can be modified. This is because Ruby blocks are closures.

# -------------------------- #

# Q18.Given the following:

MSG = 42
MSG += 5
p MSG
# What is the correct result? (Choose one.)

(a) 47 is displayed without warning.
(b) An error occurs because MSG is a constant.
(c) 42 is displayed because MSG is a constant.
(d) A warning appears beacuse MSG is a constant but 47 is displayed.

## Answer

 A18: (d)
 Constants can be redefined, but because this is usually a bad practice, a warning is displayed.
 Because Ruby also uses constants for referencing module and class names, the constant redefinition warning can also help catch accidental naming collisions.

# -------------------------- #

# Q20. Which of the following statements are true? (Choose two.):

(a) Local variables start with a lower case letter, and are two or more characters in length.
(b) Global variables start with $.
(c) Instance variables start with *.
(d) Class variables start with $.
(e) Constants start with an upper case letter.

## Answer
A20: (b) and (e)

Some notes on Ruby variable naming rules:

Global variables start with $.
Class variables start with @@.
Instance variables start with @.
Local variables must begin with a lowercase letter or an underscore.
The remaining characters in any variable type are limited to letters, numbers, and underscores.

# -------------------------- #


# Q35. Given the following:

class Object
  def moo
    puts "MOO!"
  end
end

"Cow".moo
# What is the correct result? (Choose one.)

(a) No output.
(b) An error occurs at run-time.
(c) "MOO!"
(d) nil

## Answer

 A35: (c)

Class definitions can be re-opened and updated at any time, including Ruby core classes like Object.

Because all Ruby core objects (except BasicObject) inherit from the Object class, adding new methods to Object will make them available on all objects.

# -------------------------- #

# Q36. Which of the following can be inserted into __(1)__ in order for the given code to generate the output below? (Choose one.)

class Shouter
  def __(1)__(message)
    @message = message
  end

  def greet
    puts @message.upcase
  end
end

g = Shouter.new("Hello, world!")
g.greet

[Output]
HELLO, WORLD!

(a) Shouter
(b) new
(c) initialize
(d) __init__

## Answer
A36: (c)

Whenever the new method is called on a class, a new instance of that class is allocated and then the initialize method is called on that instance. This allows some setup code to be run as soon as the object is instantiated.

# -------------------------- #

# Q37. Which of the following can be inserted into __(1)__ in order for the given code to generate the output below? (Choose one.)

class Shouter
  def initialize(message)
    @message = message
  end

  def greet
    puts @message.upcase
  end
end

g = __(1)__("Hello, world!")
g.greet

[Output]
HELLO, WORLD!

(a) Shouter
(b) #Shouter
(c) new Shouter
(d) Shouter.new

## Answer
A37: (d)

The new method (defined by Class) is used to create new object instances.

# -------------------------- #


