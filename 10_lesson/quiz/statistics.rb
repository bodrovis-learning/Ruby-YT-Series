class Statistics
  def initialize(writer)
    @correct_answers = 0
    @incorrect_answers = 0
    @writer = writer
  end

  def correct
    @correct_answers = @correct_answers + 1
  end

  def incorrect
    @incorrect_answers = @incorrect_answers + 1
  end

  def print_report
    @writer.write("\n\nПравильных ответов: #{@correct_answers}\n\n")
    @writer.write("\n\nНеправильных ответов: #{@incorrect_answers}\n\n")

    total_questions = @correct_answers + @incorrect_answers
    correct_answer_perc = (@correct_answers / total_questions.to_f) * 100

    @writer.write(
      "\n\nПроцент правильных ответов: #{correct_answer_perc.floor(2)}%\n\n"
    )
  end
end