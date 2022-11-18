def div(a, b)
  retries = 1
  max_retries = 3

  begin
    # result = a / b
    # 1 / 0 # => exception!
    # ...
    # ...
    unknown # => неизвестный метод или переменная
  rescue ZeroDivisionError => err
    puts "Произошла ошибка класса #{err.class.name}:\n#{err.message}"
    # puts 'zero division!'
    # 0
  rescue => e
    puts "Произошла ошибка класса #{e.class.name}:\n#{e.message}"
    if retries < max_retries
      retries += 1
     # sleep 2**retries
      retry # выполнить блок begin ещё раз
    else
      raise e.class, "попробовали 3 раза вызвать этот код, но не вышло..." # => породить исключение
    end

    #puts 'unknown exception'
  else # сюда мы заходим после выполнения блока begin, если там не было ошибок
    puts "Else:"
    puts result * 2
    result
  ensure # в любом случае выполнить этот код
    puts 'ENSURE!'
  end
end

# puts div(10, 2)
puts 'trying to divide by zero:'
begin
  div(100, 0)
rescue => e
  puts e.class.name
  puts e.message
end

puts 'hi!'