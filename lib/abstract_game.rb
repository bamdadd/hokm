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