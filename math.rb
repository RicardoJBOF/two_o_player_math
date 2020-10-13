#Create the Math question with random numbers

class Math_question

  attr_accessor :num1, :num2, :result

  def create_math
    self.num1 = rand(1..20)
    self.num2 = rand(1..20)
  end

  def print_question
    puts "What does #{num1} plus #{num2} equal?"
  end

  def checking_result?(num)
    num == self.num1 + self.num2
  end

end

#Testing

# create_question = Math_question.new

# create_question.create_math

# create_question.print_question