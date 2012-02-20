class Strategy
  def initialize(my_hand,public_moves)
    raise 'this method should be overriden'
  end

  def get_next_move
    raise 'this method should be overriden'
  end
end