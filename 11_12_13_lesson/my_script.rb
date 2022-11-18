
# require_relative 'printer/engine'
# require_relative 'importer/engine'

# importer = Importer::Engine.new
# printer = Printer::Engine.new

# importer.start
# printer.start

require_relative 'my_lib'

class MyParent
end

class MyClass < MyParent
  include MyLib

  def my_instance_method
    puts "Hi from MyClass!"
    helper1()
  end
end

obj = MyClass.new
obj.my_instance_method