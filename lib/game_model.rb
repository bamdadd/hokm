require "../lib/player_factory"
require "../lib/hokm_game"
require "../lib/hakem"
require "../lib/human_strategy"
require "../lib/noob_strategy"
require "../lib/team"
require "../lib/table"
class GameModel
 attr_accessor :game,:player1,:player2,:player3,:team1,:team2,:hokm_table,:hakem
 def initialize
   @game=HokmGame.new
   @public_moves=nil
   @player1=PlayerFactory.get_instance
   @player2=PlayerFactory.get_instance
   @player3=PlayerFactory.get_instance
   @player4=PlayerFactory.get_instance
   @team1=Team.new(@player1,@player3,1)
   @team2=Team.new(@player2,@player4,2)
   @hokm_table=Table.new(@team1,@player1,@player3,@team2,@player2,@player4)
   @game.table=@hokm_table
 end
 def get_hakem
   if (@hakem.eql?nil)
     @hakem=@game.chooseHakem
     @hakem.extend Hakem
     @hakem
   end
   @hakem
 end
 def distribute_hands
   @game.distributeHands
 end
 def initialize_players
   @player1.strategy=HumanStrategy.new(@player1.hand,@public_moves)
   @player2.strategy=NoobStrategy.new(@player2.hand,@public_moves)
   @player3.strategy=NoobStrategy.new(@player3.hand,@public_moves)
   @player4.strategy=NoobStrategy.new(@player4.hand,@public_moves)
 end
 def hokm(suit)
   @hakem.hokm(suit)
 end

def play

end

end
