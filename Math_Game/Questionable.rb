module Questionable
  def generateRandomNumber
    rand(21)
  end

  def generateQuestionArray
    number_1 = generateRandomNumber
    number_2 = generateRandomNumber
    questionArr = [number_1, number_2, "What is the sum of #{number_1} and #{number_2}?"]
  end

  def checkAnswer(number_1, number_2, response)
    number_1 + number_2 == response
  end

end