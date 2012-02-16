class Hand
  attr_accessor :hand
  def initialize(quarterDeck)
      @hand=quarterDeck
  end

  def count
     @hand.count
  end

  def delete_at(card_number_in_hand)
    @hand.delete_at(card_number_in_hand)
  end
end