#abstract player
#shows structure of a Player without implementation
class AbstractPlayer
  class Player
    attr_accessor:hand,:strategy,:id_number

    def play(card_number_in_hand)
    raise "this method is abstract it should have to be implemented"
    end

  end
end