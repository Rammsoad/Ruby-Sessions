# A constant has name starting with an uppercase character. It should be assigned a value at most once.

# Reasign a constant generates a warning, but not an error.

# Constants may be defined withing classes, but they are accesible outside the class.

class ConstClass
   C1=101
   C2=102
   C3=103
     def show
      print C1," ",C2," ",C3,"\n"
     end
end

# ruby> C1
ERR: (eval):1: uninitialized constant 
C1

# ruby> ConstClass::C1
   101

# ruby> ConstClass.new.show
101 102 103
   nil


# Constants can also be defined in modules.

   ruby> module ConstModule
       C1=101
       C2=102
       C3=103
       def showConstants
         print C1," ",C2," ",C3,"\n"
       end
     end

# ruby> C1
ERR: (eval):1: uninitialized constant C1
ruby> include ConstModule
   Object

# ruby> C1
   101

# ruby> showConstants
101 102 103
   nil



# Variables beginning with a capital letter are called constants.
# The value of a constant variable cannot be changed once it has been assigned.

MyNum = 42

# Trying to change the value produces a warning
MyNum = 8