require "rspec"
require "../lib/player"
require "../lib/team"

describe Team do

  it "should create a team with 2 players" do
    p1=Player.new
    p2=Player.new
    team=Team.new(p1,p2)
    team.player1.nil?.should==false
    team.player2.nil?.should==false
  end

    it "should let a team to score " do
    p1=Player.new
    p2=Player.new
    team=Team.new(p1,p2)
    team.getScore.should==0
    team.score
    team.getScore.should==1
    end

   it "should let a team to win when they get 7 points" do
    p1=Player.new
    p2=Player.new
    team=Team.new(p1,p2)
    team.winner?.should==false
    (1..7).each {|time| team.score}
    team.winner?.should==true
   end


   it "should let a team to win when they get 7 points and check passing by refference" do
    p1=Player.new
    p2=Player.new
    team=Team.new(p1,p2)
    team.winner?.should==false
    temp=team
    (1..7).each {|time| temp.score}
    team.winner?.should==true
   end

end