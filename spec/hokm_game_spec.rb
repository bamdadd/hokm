require "rspec"
require "../lib/hokm_game"
require "../lib/hakem"
require "../lib/suit"
require "../lib/table"
require "../lib/player"
require "pp"

describe HokmGame do

  before(:each) do
    @game=HokmGame.new
    p1=Player.new
    p2=Player.new
    p3=Player.new
    p4=Player.new
    @team1=Team.new(p1,p3)
    @team2=Team.new(p2,p4)
    @hokmTable=Table.new(@team1,p1,p3,@team2,p2,p4)
    @game.table=@hokmTable
  end
  it "should describe a hokm game" do
    hakem=@game.chooseHakem
    hakem.extend Hakem
    @game.distributeHands
    hakem.hokm(Suit::CLUB)
    currentPlayer=hakem
    while (@team1.winner?.eql?false and @team2.winner?.eql?false)
      @game.play(currentPlayer,1)
      3.times{
        currentPlayer=@hokmTable.nextPlayer currentPlayer
        @game.play(currentPlayer,1)
      }
      scoredPlayer=@game.findScoredPlayer
      scoredPlayer.class.should==Player
      scoredTeam=@hokmTable.findTeamByPlayer(scoredPlayer)
      scoredTeam.class.should==Team
      scoredTeam.score
      currentPlayer=scoredPlayer
     p "team1 won!!!  #{@team1.getScore}" if @team1.winner?
     p "team2 won!!! #{@team2.getScore}" if @team2.winner?
    end

  end

  it "should choose hakem" do
    hakem=@game.chooseHakem
    hakem.class.should==Player
  end

  #it "should find the highestCardValue" do
  #  @game.getHighestCard(1,2,3,4).should==1
  #  @game.getHighestCard(3,4,5,6).should==6
  #  @game.getHighestCard(2,13,11,1).should==1
  #  @game.getHighestCard(2,13,11,10).should==13
  #
  #end

end