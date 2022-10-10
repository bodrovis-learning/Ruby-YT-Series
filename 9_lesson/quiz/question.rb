class Question
  attr_reader :body, :correct_answer, :answers
  FIRST_ANSWER_CODE = 'A'.ord

  def initialize(question_text, raw_answers)
    @body = question_text
    @correct_answer = raw_answers.first
    @answers = populate_answers_from raw_answers
  end

  def find_answer_by(char)
    @answers[char]
  end

  def to_s
    "\n\n=== #{@body} ===\n\n"
  end

  def display_answers
    @answers.each do |char, text|
      puts "#{char}. #{text}"
    end
  end

  private

  def populate_answers_from(raw_answers)
    raw_answers.shuffle.each_with_index.inject({}) do |result, (answer, i)|
      answer_char = (FIRST_ANSWER_CODE + i).chr
      result[answer_char] = answer

      result
    end
  end
end