require 'abstract_game'
require '../lib/deck'
require '../lib/hand'
require '../lib/game_history'
require '../lib/game_move'

class HokmGame  < AbstractGame
  attr_accessor :table,:deck
  def initialize
    @deck=Deck.new
    @deck.shuffle!
    @history=GameHistory.new
  end
  def makePlay(player)
       raise 'this method should be overriden'
  end
  def endOfGame
       raise 'this method should be overriden'
  end
  def showWinner
      raise 'this method should be overriden'
  end

  def chooseHakem
      hakemNumber=rand(4)
      players=[@table.player1,@table.player2,@table.player3,@table.player4]
      players[hakemNumber]
  end

  def distributeHands
    hand1=Hand.new(@deck.getQuarter(1))
    hand2=Hand.new(@deck.getQuarter(2))
    hand3=Hand.new(@deck.getQuarter(3))
    hand4=Hand.new(@deck.getQuarter(4))
    @table.player1.hand=hand1
    @table.player2.hand=hand2
    @table.player3.hand=hand3
    @table.player4.hand=hand4
  end

  def play(player,whichCard)
   #TODO:need to remove 2 hand in the Hand object
   move=GameMove.new(player,whichCard,player.hand.hand[whichCard])
   @history.push move
   player.play(whichCard)
  end

  def findScoredPlayer
    move4=@history.fetch(-1)
    move3=@history.fetch(-2)
    move2=@history.fetch(-3)
    move1=@history.fetch(-4)
  #  TODO: card priority logic need to be implemented somewhere and used here
    move4.player
  end
end