







questions.load.shuffle.each do |question_data|
  
  writer.write("Ответ пользователя: #{answers[user_answer_char]}\n\n")

  # Мы сравниваем ответ с правильным
  if answers[user_answer_char] == correct_answer
    puts "Верно!"
    correct_answers = correct_answers + 1

    writer.write("Верный ответ!")
  else
    puts 'Неверно!'
    puts "Правильный ответ: #{correct_answer}"
    incorrect_answers = incorrect_answers + 1

    writer.write("Неверный ответ! Правильный ответ: #{correct_answer}")
  end
end