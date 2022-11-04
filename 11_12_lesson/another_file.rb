require_relative 'my_lib'

class AnotherParent
  include MyLib
  extend MyLib
end

AnotherParent.helper1

obj = AnotherParent.new
obj.helper2
# class AnotherClass < AnotherParent
#   include MyLib

#   def my_instance_method
#     puts "Hi from AnotherClass!"
#     helper2()
#     helper1()
#   end
# end

# obj = AnotherClass.new
# obj.my_instance_method