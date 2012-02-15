require 'abstract_game'

class HokmGame  < AbstractGame
  attr_accessor :player1,:player2,:player3,:player4,:deck
  def initialize
    initGame
  end
  def initGame

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

  def chooseHakem()
     #return one player
  end
end