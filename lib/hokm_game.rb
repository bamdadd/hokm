require 'abstract_game'

class HokmGame  < AbstractGame
  attr_accessor :table,:deck
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
      hakemNumber=rand(4)
      players=[@table.player1,@table.player2,@table.player3,@table.player4]
      players[hakemNumber]
  end
end