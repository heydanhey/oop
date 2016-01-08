class Card
  attr_accessor :question, :answers, :correct_answer, :solved

  def initialize(question, answers)
    @question = question
    @answers = answers
    @correct_answer = answers[0]
    @solved = false
  
  end

  def multiple_choice_answers
    @answers.shuffle.each do |answer|
      puts "- #{answer}"
    end
  end

  def check_answer (user_answer)
    if user_answer.downcase == @correct_answer.downcase
      puts
      puts "Correct!"
      @solved = true
      return 1   
    else
      puts
      puts "Incorrect!"
      return 0
    end
  end

end