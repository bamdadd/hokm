require 'abstract_game'
require '../lib/deck'
require '../lib/hand'
require '../lib/game_history'
require '../lib/game_move'

class HokmGame  < AbstractGame
  attr_accessor :table,:deck
  def initialize
    initGame
  end
  def initGame
    @deck=Deck.new
    @deck.shuffle!
    @history=GameHistory.new
    @hakem=nil
  end
  def play(player,which_card)
     #TODO:need to remove 2 hand in the Hand object
     move=GameMove.new(player,which_card,player.hand.hand[which_card])
     @history.push move
     player.play(which_card)
   end

  def endOfGame
    raise 'this method should be overriden'
  end

  def showWinner
    return @table.team1 if @table.team1.winner?
    return @table.team2 if @table.team2.winner?
  end

  def chooseHakem
    hakemNumber=rand(4)
    players=[@table.player1,@table.player2,@table.player3,@table.player4]
    @hakem=players[hakemNumber]
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


  def findScoredPlayer
    history_num=@history.count
    move4=@history[history_num-1]
    move3=@history[history_num-2]
    move2=@history[history_num-3]
    move1=@history[history_num-4]
    moves=[move1,move2,move3,move4]
    hokm=@hakem.getHokm
    if(anyHokm?(moves,hokm))
      return getHighestHokmMove(moves,hokm).player
    else
      return getHighestCardFromMove(move1,move2,move3,move4).player
    end
  end


  def anyHokm?(moves,hokm)
    result=false
    moves.each do |m|
      result=true if m.cardValue.suit.eql?hokm
    end
    result
  end
  def getHighestHokmMove(moves,hokm)
    moves_with_hokm=[]
    moves.each {|m|
      moves_with_hokm.push(m) if m.cardValue.suit.eql?hokm
    }
    moves_with_hokm.sort_by{|i|i.cardValue.number}.last
  end
  def getHighestCardFromMove(move1,move2,move3,move4)
    return move1 if move1.cardValue.number.eql?1
    return move2 if move2.cardValue.number.eql?1
    return move4 if move3.cardValue.number.eql?1
    return move4 if move4.cardValue.number.eql?1
    moves=[]
    moves.push(move1)
    moves.push(move2) if move2.cardValue.suit.eql?move1.cardValue.suit
    moves.push(move3) if move3.cardValue.suit.eql?move1.cardValue.suit
    moves.sort_by{|i|i.cardValue.number}.last

  end


end