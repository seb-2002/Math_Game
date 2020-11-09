class Question
  attr_reader :questionString, :number_1, :number_2

  def generateRandomNumber
    rand(21)
  end

  def initialize
    @number_1 = generateRandomNumber
    @number_2 = generateRandomNumber
    @questionString = "What is the sum of #{number_1} and #{number_2}?"
  end

  def checkAnswer(response)
    @number_1 + @number_2 == response
  end

end