require "../lib/team"
class Table
    attr_accessor :player1,:player2,:player3,:player4,:team1,:team2
  def initialize(team1,p1,p2,team2,p3,p4)
      @player1=p1
      @player2=p2
      @player3=p3
      @player4=p4
      @team1=team1
      @team2=team2
  end

  def findTeamByPlayer(player)
    if(@team1.players.include?(player))
      return @team1
    elsif(@team2.players.include?(player))
      return @team2
    else
      return nil
    end
  end
  def nextPlayer(player)
    return @player2 if player.eql?@player1
    return @player3 if player.eql?@player2
    return @player4 if player.eql?@player3
    return @player1 if player.eql?@player4
  end
end