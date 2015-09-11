# Card class with initializer
class Card
  attr_accessor :rank, :suit
 
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
 
  def output_card
    puts "The #{@rank} of #{@suit}"
  end
end
 
# Deck class with initializer
class Deck
  def initialize
    @ranks = [*(2..10), 'A','J', 'Q', 'K']
    @suits = ['♣', '♥', '♠', '♦']
    @cards = []
 
    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  
  # shuffle method
  @cards.shuffle!
  end
 
 # deal method
  def deal (number)
    number.times {@cards.shift.output_card}
  end
end
 
deck = Deck.new
deck.deal(7)