# 1. Компьютер придумывает случайное целое число
random_number = (rand * 10).to_i + 1

puts "Я загадал число от 1 до 10"
# 2. Пользователь с клавиатуры вводит догадку

guess = gets.to_i
# 3. Догадка сравнивается с загаданным числом

if guess == random_number
  puts "Молодец!"
elsif guess < random_number
  puts "Нет, моё число больше"
else
  puts "Нет, моё число меньше"
end

loop do
  if age > 10
    break
  end
end