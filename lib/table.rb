require "team"
class Table

  def initialize(team1,p1,p2,team2,p3,p4)
      @player1=p1
      @player2=p2
      @player3=p3
      @player4=p4
      @team1=team1
      @team2=team2
  end

  def findTeamByPlayer(player)
   return @team1 if(player.equal?@player1 or player.eql?@player2)
   return @team2 if(player.equal?@player3 or player.eql?@player4)
  end
end