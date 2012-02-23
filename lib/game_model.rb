require "../lib/player"
require "../lib/hokm_game"
require "../lib/hakem"
class GameModel
 attr_accessor :game
 def initialize
   @game=HokmGame.new
   @player1=Player.new
   @player2=Player.new
   @player3=Player.new
   @player4=Player.new
   #TODO: decorate players with strategy(in model?)
   @team1=Team.new(p1,p3)
   @team2=Team.new(p2,p4)
   @hokm_table=Table.new(@team1,p1,p3,@team2,p2,p4)
   @game.table=@hokm_table
   @hakem=@game.chooseHakem
   @hakem.extend Hakem
   @game.distributeHands
 end
 def hokm(suit)
   @hakem.hokm(suit)
 end

def play

end

end
