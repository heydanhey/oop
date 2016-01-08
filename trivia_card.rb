require_relative "card"
require_relative "deck"

trivia_data = {
  "What is the capitial of Illinois?" => ["Springfield", "Chicago", "Rockford"],
  "Is Africa a country or a contienent?" => ["Contienent", "Country"],
  "Tug of war was once an Olumpic event. True? of False?" => ["True", "False"]
}

deck = Deck.new(trivia_data)

right = 0
wrong = 0

while deck.remaining_cards > 0

  card = deck.draw_card # card is an instance of the Card class
  attempts = 0
  while attempts < 2

    puts "-----------------------------"
    puts card.question
    puts "Select from the below options:"
    card.multiple_choice_answers

    user_answer = gets.chomp

    if user_answer.downcase == card.correct_answer.downcase
      puts
      puts "Correct!"
      right += 1
      attempts = 2 # if correct answer exits loop
    else
      puts
      puts "Incorrect!"
      wrong +=1
      attempts += 1
    end
  end
end

puts
puts "Thanks for playing. Your score is #{right}."
puts "Would you like to try the answers you got wrong? y/n:"
input = gets.chomp

if input == 'y'

  deck.cards.each do |card|

    if !card.solved
      puts "-----------------------------"
      puts card.question
      puts "Select from the below options:"
      card.multiple_choice_answers
      user_answer = gets.chomp

      if user_answer.downcase == card.correct_answer.downcase
        puts
        puts "Correct!"
        right += 1
        attempts = 2 # if correct answer exits loop
      else
        puts
        puts "Incorrect!"
        wrong +=1
        attempts += 1
      end
    end
  end
else
  puts "Goodbye"
end