countries = [
  'РФ',
  'Китай',
  'Франция',
  'Великобритания',
  'Норвегия',
  'Камбоджа'
]

capitals = [
  'Москва',
  'Пекин',
  'Париж',
  'Лондон',
  'Осло',
  'Пномпень'
]

result = countries.zip capitals
puts result.to_h.inspect