# 1 mile = 1.4 km

puts "Введите значение в километрах!"

user_input_in_km = gets.to_f

#result_in_miles = user_input_in_km / 1.4
result_in_miles = user_input_in_km * (1.4 ** -1)

puts "Значение в милях: #{result_in_miles}"