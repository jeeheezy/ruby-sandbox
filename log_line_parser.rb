class LogLineParser
  def initialize(line)
    @line = line
    @colon_index = @line.index(':')
  end

  def message
    # raise 'Please implement the LogLineParser#message method'
    pp @colon_index
    message_with_spaces = @line[@colon_index + 1 .. -1]
    pp message_with_spaces
    message_with_spaces.strip
  end

  def log_level
    # raise 'Please implement the LogLineParser#log_level method'
    log_level_string = @line[1, (@colon_index - 2)]
    log_level_string.downcase
    pp log_level_string
  end

  def reformat
    # raise 'Please implement the LogLineParser#reformat method'
    "#{self.message} (#{self.log_level})"
  end
end

LogLineParser.new('[ERROR]: Invalid operation').message
LogLineParser.new('[ERROR]: Invalid operation').log_level
LogLineParser.new('[ERROR]: Invalid operation').reformat
