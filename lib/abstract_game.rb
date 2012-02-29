# this class shows how a card-base game can be defined, therefore
# if we want to implement a new card-based game we just have to
# work with this prototype.
# This is usage of Template Method
class AbstractGame
  def initGame
       raise 'this method should be overriden'
  end
  def play(player,which_card)
       raise 'this method should be overriden'
  end
  def endOfGame()
       raise 'this method should be overriden'
  end
  def showWinner()
      raise 'this method should be overriden'
  end

end