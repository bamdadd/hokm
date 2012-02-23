require "strategy"
class HumanStrategy < Strategy
  attr_accessor:my_hand,:public_moves
  def initialize(my_hand,public_moves)
       @my_hand=my_hand
       @public_moves=public_moves
  end

  def get_next_move
    number_of_cards=@my_hand.count
     #return rand(number_of_cards)-1
  #  TODO: ask player to choose card
  end
end