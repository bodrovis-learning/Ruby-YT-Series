# 1. Компьютер придумывает случайное целое число
random_number = (rand * 10).to_i + 1

puts "Я загадал число от 1 до 10"
# 2. Пользователь с клавиатуры вводит догадку

iterations = 0

loop do
  iterations = iterations + 1
  
  if iterations > 9000
    puts "аварийный выход!"
    break
  end
  guess = gets.to_i
  # 3. Догадка сравнивается с загаданным числом

  if guess == random_number
    puts "Молодец!"
    break # выйти из цикла
  elsif guess < random_number
    puts "Нет, моё число больше"
  else
    puts "Нет, моё число меньше"
  end
end