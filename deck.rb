class Deck
  attr_accessor :cards, :used_cards
  
  def initialize(trivia_data)
      @used_cards = []
      @cards = []
      trivia_data.each do |k, v|
        @cards << Card.new(k, v)
      end
  end

  def remaining_cards
    @cards.length
  end

  def draw_card
    used_cards << cards[0]
    @cards.shift
  end
end