class FileWriter
  def initialize(mode, *args)
    @filename = "QUIZ_#{args[0]}_#{args[1]}.txt"
    @mode = mode
  end

  def write(content)
    File.write(
      @filename,
      content,
      mode: @mode
    )
  end
end