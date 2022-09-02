require 'yaml'
# fileutils

a_code = 'A'.ord # => 65
correct_answers = 0
incorrect_answers = 0

# Ввести имя с клавиатуры
puts "Введите ваше имя:"
name = gets.strip

current_time = Time.now.strftime('%Y-%m-%d_%H-%M-%S')

filename = "QUIZ_#{name}_#{current_time}.txt"

File.write(
  filename,
  "Результаты для пользователя #{name}\n\n#{current_time}",
  mode: 'a' # открыть файл только для записи и дописывать контент в КОНЕЦ ФАЙЛА!!!
)

# Откуда-то взять вопросы и ответы
# YAML = yet another markup language
all_questions = YAML.safe_load_file('questions.yml', symbolize_names: true) # читаем файл 

# Брать каждый вопрос по очереди и предлагать 4 варианта ответа
all_questions.shuffle.each do |question_data|
  # На каждой итерации выводится текст вопроса и ВСЕ 4 ответа
  formatted_question = "\n\n=== #{question_data[:question]} ===\n\n"
  puts formatted_question

  File.write(
    filename,
    formatted_question,
    mode: 'a' # открыть файл только для записи и дописывать контент в КОНЕЦ ФАЙЛА!!!
  )

  # тут хранится не БУКВА ответа, а сам текст ответа!!!
  correct_answer = question_data[:answers].first

  # тот хэш, который мы делаем
  # очередной элемент массива (то есть очередной ответ из массива)
  # индекс этого ответа
  answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|
    # На каждой итерации мы выводим по 1 ответу

  # { "A" => "Ответ 1", "B" => "Ответ 2" ...}
    answer_char = (a_code + i).chr # получаем букву для ответа
    result[answer_char] = answer
    # result = {"A" => "Эквадор", "B" => "Гондурас"}

    # А. Ответ 1
    puts "#{answer_char}. #{answer}"

    result # => теперь используй новое значение хэша для result
  end

  # На момент завершения работы цикла question_data[:answers].shuffle
  # у нас выведены на экран все 4 ответа (в произвольном порядке) + выведен сам вопрос

  user_answer_char = nil

  # Юзер вводит ответ с клавиатуры
  loop do # это цикл, который просто запрашивает ввод с клавиатуры
    puts 'Ваш ответ:'
    user_answer_char = gets.strip[0]
    if user_answer_char.between?('A', 'D') # что ответ вообще в диапазоне от А до D
      break
    else
      puts "Ответ только A - D"
    end
  end
  # на этом моменте переменные, которые мы создали внутри цикла loop УЖЕ НЕДОСТУПНЫ!!!
  
  File.write(
    filename,
    "Ответ пользователя: #{answers[user_answer_char]}\n\n",
    mode: 'a'
  )

  # Мы сравниваем ответ с правильным
  if answers[user_answer_char] == correct_answer
    puts "Верно!"
    correct_answers = correct_answers + 1

    File.write(
      filename,
      "Верный ответ!",
      mode: 'a'
    )
  else
    puts 'Неверно!'
    puts "Правильный ответ: #{correct_answer}"
    incorrect_answers = incorrect_answers + 1

    File.write(
      filename,
      "Неверный ответ! Правильный ответ: #{correct_answer}",
      mode: 'a'
    )
  end
end

File.write(
  filename,
  "\n\nПравильных ответов: #{correct_answers}\n\n",
  mode: 'a'
)
File.write(
  filename,
  "\n\nНеправильных ответов: #{incorrect_answers}\n\n",
  mode: 'a'
)

correct_answer_percentage = (correct_answers / all_questions.length.to_f) * 100

File.write(
  filename,
  "\n\nПроцент правильных ответов: #{correct_answer_percentage.floor(2)}%\n\n",
  mode: 'a'
)