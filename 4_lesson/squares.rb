# arr = []

# 10.times do |i| # менять своё значение от 0 до 9
#   arr << (i + 1)
# end

(1..10).each do |el|
  puts "#{el} --> #{el ** 2}"
end