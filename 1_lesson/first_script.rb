# 1 mile = 1.4 km

# 1. Принять ввод с клавиатуры от пользователя, величина вводится в милях
puts "Введите значение в милях!"

user_input_in_miles = gets#.to_f
user_input_in_miles = user_input_in_miles.to_f

# 2. Конвертировать мили в километры путём умножения
result_in_kilometers = user_input_in_miles * 1.4

# 3. Вывести на экран результат
# puts "Значение в километрах: " + result_in_kilometers.to_s
puts "Значение в километрах: #{result_in_kilometers}"

# # Типы данных
# # целые числа (integers): 5, 10, 1000, 234234433
# # дробные числа (floats): 3.14, 2.22, 100.5
# # строки (strings): "Hello world", "hello from 3.14"
# # массивы (arrays): [ 1, 2, 3, 4 ], [ "hello", "world" ]
# # хэши (hash): { "first int" => 42, "second int" => 100 }


# # Операции с числами
# 3 + 2
# 100 - 55
# 2 * 5
# 4 / 2

# # операции со строками
# "hello " + "world"