class Animal
  attr_accessor :age, :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def speak
    puts "это просто общий класс для животных..."
  end
end

class Dog < Animal # возьми методы из класса Animal
  def speak # переопределим метод родителя (Animal)
    puts "WOOF!"
  end

  def eat(amount)
    if amount > 0.5
      puts "Я столько не съем!"
    else
      puts "Вкусно!"
    end
  end
end

class SmallDog < Dog
end

class Cat < Animal
  def speak
    puts "MEOW!"
  end

  def eat(amount)
    if amount > 0.3
      puts "Я столько не съем!"
    else
      puts "Вкусно!"
    end
  end
end

dog = Dog.new "Scooby", 10
dog.speak
puts dog.name

# animal = Animal.new
# animal.speak