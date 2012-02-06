class AbstractGame
  def initGame
       raise 'this method should be overriden'
  end
  def makePlay(player)
       raise 'this method should be overriden'
  end
  def endOfGame()
       raise 'this method should be overriden'
  end
  def showWinner()
      raise 'this method should be overriden'
  end

end