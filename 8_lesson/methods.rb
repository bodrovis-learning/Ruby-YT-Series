class Cat
  # attr_reader :age

  # метод образца класса (instance method)
  def initialize(age)
    @age = to_cat_years(age)
    #Cat.speak
  end

  def age
    return @age
  end

  def age=(new_age)
    @age = new_age
  end

  def birthday
    #puts "Мой текущий возраст #{self.age}"
    puts "Мой текущий возраст #{age}"
    self.age = self.age + 1
    puts "Мой новый возраст #{age}"
  end

  # метод класса (class method)
  #def Cat.speak
  def self.speak # self указывает на текущий объект (где выполняется программа)
    puts "meow!"
    puts self.inspect
  end

  def sample(age, name, *args)
    #puts args.inspect
    puts age
    puts name
    args.each do |a|
      puts a
    end
  end

  private

  def to_cat_years(human_age) # служебный метод
    return human_age.to_f / 4
  end

  # ...
end

# puts self.inspect
animal1 = Cat.new 40
# animal1.birthday

animal1.sample 10, "My Name"#, 33, 100, :test, [123, 345]

# animal2 = Cat.new 60
# animal2.birthday

# # puts animal.to_cat_years(100)

# #Cat.speak
# animal1 < animal2