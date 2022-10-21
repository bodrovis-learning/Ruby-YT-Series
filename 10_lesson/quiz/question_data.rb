require 'yaml'
require_relative 'question'

class QuestionData
  attr_reader :collection
  
  def initialize(filename = 'questions.yml')
    @collection = load_from filename # у нас будет массив, состоящий из образцов класса Question
  end

  private

  def load_from(filename)
    YAML.safe_load_file(filename, symbolize_names: true).shuffle.map do |q_data|
      Question.new q_data[:question], q_data[:answers]
    end
  end
end