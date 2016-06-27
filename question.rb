class Question
  attr_reader(:answer)

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operator = rand(1..3)

    case @operator
    when 1
      @answer = @num1 + @num2
      @operator_string = '+'
    when 2
      @answer = @num1 - @num2
      @operator_string = '-'
    else
      @answer = @num1 * @num2
      @operator_string = '*'
    end
  end

  def to_string
    "What is the answer for #{@num1} #{@operator_string} #{@num2}?"
  end

  def verify_answer(user_input)
    if user_input.to_i == @answer
      return true
    else
      return false
    end
  end
end
