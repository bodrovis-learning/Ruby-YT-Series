def demo(*args)
  sum = 0

  args.each do |next_arg|
    result = yield(next_arg)
    sum = sum + next_arg if result
  end

  puts sum
end

demo(101, 50, 2, 3, 5, 6, 7) do |el|
  el.odd? # нечётный?
end

demo(101, 50, 2, 3, 5, 6, 7) do |el|
  el.even?
end

# [1,2,3].each do |el|
#   # block
#   puts el
# end

# new_arr = [1,2,3].map do |el|
#   # block
#   el * 2
# end

# puts el # ошибка!

