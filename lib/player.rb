require "../lib/hand"
class Player
    attr_accessor:hand

  def initialize
  end

  def play(card_number_in_hand)
    @hand.delete_at(card_number_in_hand)
  end
end