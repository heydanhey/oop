class Deck
  attr_accessor :cards
  def initialize(trivia_data)
      @cards = []
      trivia_data.each do |k, v|
        @cards << Card.new(k, v)
      end
  end

  def remaining_cards
    @cards.length
  end

  def draw_card
    @cards.shift
  end
end