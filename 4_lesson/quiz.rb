countries = [
  'РФ', # 0
  'Китай', # 1
  'Франция',
  'Великобритания',
  'Норвегия',
  'Камбоджа'
]

capitals = [
  'Москва', # 0
  'Пекин', # 1
  'Париж',
  'Лондон',
  'Осло',
  'Пномпень'
]

data = {
  'РФ' => 'Москва',
  'Китай' => 'Пекин',
  'Франция' => 'Париж',
  'Великобритания' => 'Лондон',
  'Норвегия' => 'Осло',
  'Камбоджа' => 'Пномпень'
}

#countries.each.with_index do |country, index|
data.each do |country, capital|
  puts "Страна #{country}"
  
  user_input = gets.strip.downcase # => Осло ---- осло

  if user_input == capital.downcase
    # если пользователь ввёл правильный ответ
    puts "Молодец!"
  else
    puts "Ошибка"
    puts "Правильный ответ #{capital}"
  end
end