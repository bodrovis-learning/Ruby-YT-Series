# class

# возраст
# вес
# кличка

class Animal
  # переменные образца класса (instance variables)

  # тело класса
  # тут мы описываем, какие атрибуты есть у животных
  # и ещё, какие методы (функции) они могут реализовывать
  def initialize(name, age) # метод, который вызывается при создании нового животного
    # name - это переменная (аргумент метода), которая существует только пока работает метод
    # мы для ТОГО ЖИВОТНОГО, КОТОРОЕ СЕЙЧАС СОЗДАЛИ
    # сохраняем его ЛИЧНОЕ имя
    @name = name
    @age = age
  end

  def age # ЭТО МЕТОД, который сообщает возраст животного
    # puts "Мне #{@age} лет"
    return @age
    # любые строки кода после return не выполнятся (в рамках ЭТОГО МЕТОДА!!!!)

    a = 1 + 2 # это не выполнится!    
  end

  def age=(new_age)
    @age = new_age
  end

  # def birthday
  #   @age = @age + 1
  # end
  
  def between?
    puts "hi"
  end

  def this_i1s_method
  end
end

# Порождаем образец (экземпляр) этого класса
animal1 = Animal.new "Kotopes", 3 # создаём новое животное и запускаем метод initialize
animal2 = Animal.new("Pesokot", 10)

# # animal1.new_age(4)
# # animal1.new_age 4
# animal1.age = 4
# # animal1.birthday

# animal1.age
# animal2.age

animal1_age = animal1.age

puts "Возраст животного номер 1 #{animal1_age}"