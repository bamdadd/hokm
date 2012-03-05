#Card Object , encapsulates Card concept into a class
require "../lib/suit"
class Card
  attr_reader :suit,:number
  def initialize(suit,number)
    #validation
    raise "CardNumberNotValid" if !number.between?(1, 13)
    raise "SuitNotValid" if !(suit.eql?Suit::CLUB or suit.eql?Suit::HEART or suit.eql?Suit::DIAMOND or suit.eql?Suit::SPADE)
    @suit=suit
    @number=number
  end
end