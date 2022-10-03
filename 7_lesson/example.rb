# class

# возраст
# вес
# кличка

class Animal
  attr_accessor :age
  attr_reader :name # метод только для чтения!
  attr_writer :name # метод для изменения!
  
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
end

# Порождаем образец (экземпляр) этого класса
animal1 = Animal.new "Kotopes", 3 # создаём новое животное и запускаем метод initialize
animal2 = Animal.new("Pesokot", 10)

puts animal1.age
# animal2.name = "NEW PESOKOT"
puts animal2.name