require_relative "card"
require_relative "deck"

trivia_data = {
  "What is the capitial of Illinois?" => ["Springfield", "Chicago", "Rockford"],
  "Is Africa a country or a contienent?" => ["Contienent", "Country"],
  "Tug of war was once an Olumpic event. True? of False?" => ["True", "False"]
}

deck = Deck.new(trivia_data)

score = 0

while deck.remaining_cards > 0

  card = deck.draw_card # card is an instance of the Card class
  attempts = 0
  while attempts < 2
    puts "-----------------------------"
    puts card.question
    puts "Select from the below options:"
    card.multiple_choice_answers
    user_answer = gets.chomp
    if card.check_answer(user_answer) == 1
      score += 1
      break
    else
      attempts += 1
    end
  end
end

puts
puts "Thanks for playing. Your score is #{score}."

if score == deck.used_cards.length
  puts "Congratulations, you got a perfect score!!!!!"
else
  puts "Would you like to retry the questions you got wrong? y/n:"
  input = gets.chomp

  if input == 'y'
    deck.used_cards.each do |card|
      if !card.solved
        puts "-----------------------------"
        puts card.question
        puts "Select from the below options:"
        card.multiple_choice_answers
        user_answer = gets.chomp
        if card.check_answer(user_answer) == 1
          score += 1
        end
      end
    end
    puts "Thanks for playing. Your FINAL score is #{score}."
  end
end

puts "The End."