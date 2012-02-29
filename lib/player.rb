require "../lib/hand"
require "../lib/abstract_player"
class Player  < AbstractPlayer
    attr_accessor:hand,:strategy,:id_number

  def play(card_number_in_hand)
    @hand.delete_at(card_number_in_hand)
  end

end