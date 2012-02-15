require "rspec"
require "../lib/player"
require "../lib/team"
require "../lib/table"

describe Table do

  it "should create a table with 2 teams and 4 players" do
   p1=Player.new
   p2=Player.new
   p3=Player.new
   p4=Player.new
   team1=Team.new(p1,p3)
   team2=Team.new(p2,p4)
   table=Table.new(team1,p1,p3,team2,p2,p4)

  end
  it "should find a team on the table which one player is in it" do
   p1=Player.new
   p2=Player.new
   p3=Player.new
   p4=Player.new
   team1=Team.new(p1,p3)
   team2=Team.new(p2,p4)
   table=Table.new(team1,p1,p3,team2,p2,p4)
   tempTeam=table.findTeamByPlayer(p1)
   tempTeam.should==team1
   tempTeam=table.findTeamByPlayer(p2)
   tempTeam.should==team2
   tempTeam=table.findTeamByPlayer(p3)
   tempTeam.should==team1
   tempTeam=table.findTeamByPlayer(p4)
   tempTeam.should==team2
  end
end